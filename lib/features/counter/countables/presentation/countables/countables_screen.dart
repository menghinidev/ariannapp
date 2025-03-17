import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/countables/presentation/create_countable/create_countable_bottom_sheet.dart';
import 'package:ariannapp/features/counter/countables/usecase/delete_countable/command/deletecountablecommand.dart';
import 'package:ariannapp/features/counter/countables/usecase/delete_countable/delete_countable_use_case.dart';
import 'package:ariannapp/features/counter/countables/usecase/get_countables/get_countables_use_case.dart';
import 'package:ariannapp/features/counter/countables/usecase/increment/command/incrementcountablecommand.dart';
import 'package:ariannapp/features/counter/countables/usecase/increment/increment_countable_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountableScreen extends ConsumerWidget {
  const CountableScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countables = ref.watch(getMyCountablesProvider);
    return BaseAppScreen.sliver(
      title: 'Contatori',
      actions: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () => ref.read(bottomSheetServiceProvider).showBottomSheet<void>(
                context,
                builder: (context) => const NewCountableDataBottomSheet(),
              ),
        ),
      ],
      children: [
        BaseSliverLoader(
          value: countables,
          builder: (context, value) => EmptyCaseBuilder.sliver(
            isEmpty: value.isEmpty,
            title: 'Nessun contatore',
            builder: (context) => SliverList.separated(
              itemCount: value.length,
              separatorBuilder: (context, index) => const Divider(height: DistanceProvider.mediumDistance),
              itemBuilder: (context, index) {
                final countable = value[index];
                return CustomDismissible(
                  value: countable,
                  background: const DismissibleDeleteDecoration(),
                  onDismissed: () => ref
                      .read(deleteCountableUseCaseProvider)
                      .execute(DeleteCountableCommand(id: countable.id, context: context)),
                  child: ListTile(
                    title: Text(countable.name),
                    subtitle: countable.events.isEmpty ? null : Text(countable.events.last.timestamp.toExtendedDate),
                    leading: CircleAvatar(
                      maxRadius: 24,
                      minRadius: 24,
                      backgroundColor: context.colorScheme.primaryContainer,
                      child: Text(
                        '${countable.counter}',
                        style: context.textTheme.titleLarge?.copyWith(color: context.colorScheme.onPrimaryContainer),
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () => ref
                          .read(incrementCountableUseCaseProvider)
                          .execute(IncrementCountableCommand(data: countable, context: context)),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
