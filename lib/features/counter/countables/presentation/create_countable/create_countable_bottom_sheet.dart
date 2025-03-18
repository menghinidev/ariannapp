import 'package:ariannapp/core/ui/layout/layout_provider.dart';
import 'package:ariannapp/features/counter/countables/presentation/create_countable/bloc/create_countable_controller.dart';
import 'package:ariannapp/features/counter/countables/usecase/create_countable/command/createcountablecommand.dart';
import 'package:ariannapp/features/counter/countables/usecase/create_countable/create_countable_use_case.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NewCountableDataBottomSheet extends ConsumerWidget {
  const NewCountableDataBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newCountableControllerProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: 'Nome', hintText: 'Inserisci il nome del contatore'),
          onChanged: (value) => ref.read(newCountableControllerProvider.notifier).updateName(value),
        ),
        SwitchListTile.adaptive(
          value: state.isPublic,
          onChanged: (_) => ref.read(newCountableControllerProvider.notifier).toggleIsPublic(),
          title: const Text('Pubblico'),
        ),
        DistanceProvider.mediumDistance.spacer(),
        ElevatedButton(
          onPressed: !state.isValid ? null : () => _submit(context, ref, state),
          child: const Text('Crea'),
        ),
      ],
    );
  }

  Future<void> _submit(BuildContext context, WidgetRef ref, CountableDataBuilder state) {
    final command = CreateCountableCommand(data: state, context: context);
    return ref
        .read(createCountableUseCaseProvider)
        .execute(command)
        .then((_) => context.mounted ? context.pop() : null);
  }
}
