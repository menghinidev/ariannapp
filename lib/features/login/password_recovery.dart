import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/authentication/recover_password/command/recoverpasswordcommand.dart';
import 'package:ariannapp/core/infrastructure/authentication/recover_password/recover_password_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _emailProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});

class StartResetPasswordProcessButton extends ConsumerWidget {
  const StartResetPasswordProcessButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      child: const Text('Password dimenticata?'),
      onPressed: () => ref.read(bottomSheetServiceProvider).showBottomSheet<void>(
            context,
            builder: (_) => const _PasswordResetBottomSheet(),
          ),
    );
  }
}

class _PasswordResetBottomSheet extends ConsumerWidget {
  const _PasswordResetBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.read(_emailProvider);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
            autofillHints: const [AutofillHints.email],
            onChanged: (value) => ref.read(_emailProvider.notifier).state = value,
          ),
          DistanceProvider.mediumDistance.spacer(),
          ElevatedButton(
            onPressed: email == null || email.isEmpty
                ? null
                : () => ref
                    .read(recoverPasswordUseCaseProvider)
                    .execute(RecoverPasswordCommand(email: ref.read(_emailProvider)!, context: context)),
            child: const Text('Invia email di recupero'),
          ),
        ],
      ),
    );
  }
}
