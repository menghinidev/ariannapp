import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/groceries/shared/model/grocery_category.dart';
import 'package:ariannapp/features/groceries/shelf/presentation/components/new_shelf_item/bloc.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/add_shelf_item/add_shelf_item_use_case.dart';
import 'package:ariannapp/features/groceries/shelf/usecase/add_shelf_item/command/add_shelf_item_command.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NewShelfItemBottomSheet extends ConsumerWidget {
  const NewShelfItemBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final builder = ref.watch(newShelfItemBuilderProvider);
    return BottomSheet(
      onClosing: () {},
      builder: (context) => SingleChildScrollView(
        padding: DistanceProvider.screenInsets.padding.add(MediaQuery.of(context).viewInsets),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Aggiungi elemento',
              style: context.textTheme.headlineSmall,
            ),
            DistanceProvider.mediumDistance.spacer(),
            TextFormField(
              initialValue: builder.name,
              autovalidateMode: AutovalidateMode.onUnfocus,
              onChanged: ref.read(newShelfItemBuilderProvider.notifier).updateName,
              validator: (value) => value == null || value.isEmpty ? 'Non può essere vuoto' : null,
            ),
            DistanceProvider.mediumDistance.spacer(),
            _CategorySelector(selected: builder.category),
            DistanceProvider.mediumDistance.spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: !builder.canBuild ? null : () => _add(context, ref, builder),
                child: const Text('Aggiungi'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _add(BuildContext context, WidgetRef ref, NewShelfItemState state) async {
    final command = AddShelfItemCommand(context: context, name: state.name!, category: state.category!);
    final usecase = await ref.read(addShelfItemUseCaseProvider.future);
    await usecase.call(command);
    if (context.mounted) context.pop();
  }
}

class _CategorySelector extends ConsumerWidget {
  const _CategorySelector({this.selected});

  final GroceryCategory? selected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categoria',
          style: context.textTheme.titleMedium,
        ),
        DistanceProvider.mediumDistance.spacer(),
        Wrap(
          spacing: DistanceProvider.mediumDistance,
          children: [
            for (final category in GroceryCategory.values)
              ChoiceChip(
                label: Text(category.label),
                selected: category == selected,
                onSelected: (value) => ref.read(newShelfItemBuilderProvider.notifier).changeCategory(category),
              ),
          ],
        ),
      ],
    );
  }
}
