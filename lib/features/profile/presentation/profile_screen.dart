import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/core/infrastructure/authentication/verify_email/verify_email_use_case.dart';
import 'package:ariannapp/features/profile/usecase/change_password/change_password_use_case.dart';
import 'package:ariannapp/features/profile/usecase/change_password/command/changepasswordcommand.dart';
import 'package:ariannapp/features/profile/usecase/update/command/updateusercommand.dart';
import 'package:ariannapp/features/profile/usecase/update/update_user_use_case.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _nameProvider = StateProvider.family.autoDispose<String?, User?>((ref, input) {
  return input?.displayName;
});

final _photoUrlProvider = StateProvider.family.autoDispose<String?, User?>((ref, input) {
  return null;
});

final _enabledProvider = Provider.family.autoDispose<bool, User?>((ref, input) {
  final name = ref.watch(_nameProvider(input));
  final photoUrl = ref.watch(_photoUrlProvider(input));
  if (name != input?.displayName || photoUrl != null) {
    return true;
  }
  return false;
});

final _oldPasswordProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});

final _newPasswordProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});

final _confirmPasswordProvider = StateProvider.autoDispose<String?>((ref) {
  return null;
});

final _isPasswordChangeEnabledProvider = StateProvider.autoDispose<bool>((ref) {
  final oldPassword = ref.watch(_oldPasswordProvider);
  final newPassword = ref.watch(_newPasswordProvider);
  final confirmPassword = ref.watch(_confirmPasswordProvider);
  if (oldPassword == null || newPassword == null || confirmPassword == null) return false;
  if (newPassword != confirmPassword) return false;
  if (newPassword.length < 6) return false;
  return true;
});

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authenticationStateProvider.select((e) => e.valueOrNull));
    final name = ref.watch(_nameProvider(user));
    final photoUrl = ref.watch(_photoUrlProvider(user));
    final isEnabled = ref.watch(_enabledProvider(user));
    if (user == null) return const SizedBox.shrink();
    return BaseAppScreen.sliver(
      title: 'Profilo',
      actions: [
        IconButton(
          color: context.colorScheme.error,
          icon: const Icon(Icons.exit_to_app_outlined),
          onPressed: () => ref.read(logoutUseCaseProvider).execute(context),
        ),
      ],
      fab: isEnabled ? _SaveChangesFab(user: user, name: name, photoUrl: photoUrl) : _ChangePasswordFab(user: user),
      children: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: DistanceProvider.screenInsets.padding,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundImage: NetworkImage(user.photoURL ?? ''),
                      onBackgroundImageError: (exception, stackTrace) => const Icon(Icons.person),
                    ),
                    DistanceProvider.mediumDistance.spacer(axis: Axis.horizontal),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(labelText: 'URL Foto'),
                        initialValue: photoUrl,
                        onChanged: (value) => ref.read(_photoUrlProvider(user).notifier).state = value,
                      ),
                    ),
                  ],
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  suffixIcon: user.emailVerified
                      ? const Icon(Icons.verified)
                      : GestureDetector(
                          onTap: () => ref.read(verifyEmailUseCaseProvider).execute(context),
                          child: const Icon(Icons.warning),
                        ),
                ),
                initialValue: user.email,
                readOnly: true,
                enabled: !user.emailVerified,
              ),
              DistanceProvider.mediumDistance.spacer(),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nome'),
                initialValue: user.displayName,
                onChanged: (value) => ref.read(_nameProvider(user).notifier).state = value,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ChangePasswordFab extends ConsumerWidget {
  const _ChangePasswordFab({
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      child: const Icon(Icons.key_outlined),
      onPressed: () => ref.read(bottomSheetServiceProvider).showBottomSheet<void>(
            context,
            builder: (context) => _ChangePasswordBottomSheet(user: user),
          ),
    );
  }
}

class _SaveChangesFab extends ConsumerWidget {
  const _SaveChangesFab({
    required this.user,
    this.name,
    this.photoUrl,
  });

  final User user;
  final String? name;
  final String? photoUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () => ref.read(updateUserUseCaseProvider).execute(
            UpdateUserCommand(
              user: user,
              name: name,
              photoUrl: photoUrl,
              context: context,
            ),
          ),
    );
  }
}

class _ChangePasswordBottomSheet extends ConsumerWidget {
  const _ChangePasswordBottomSheet({required this.user});

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnabled = ref.watch(_isPasswordChangeEnabledProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Cambia password',
          style: context.textTheme.titleLarge,
        ),
        DistanceProvider.mediumDistance.spacer(),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Vecchia password'),
          obscureText: true,
          onChanged: (value) => ref.read(_oldPasswordProvider.notifier).state = value,
        ),
        DistanceProvider.mediumDistance.spacer(),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Nuova password'),
          obscureText: true,
          onChanged: (value) => ref.read(_newPasswordProvider.notifier).state = value,
        ),
        DistanceProvider.mediumDistance.spacer(),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Conferma password'),
          obscureText: true,
          onChanged: (value) => ref.read(_confirmPasswordProvider.notifier).state = value,
        ),
        DistanceProvider.mediumDistance.spacer(),
        ElevatedButton(
          onPressed: !isEnabled ? null : () => _onPressed(context, ref),
          child: const Text('Cambia password'),
        ),
      ],
    );
  }

  Future<void> _onPressed(BuildContext context, WidgetRef ref) {
    context.pop();
    return ref.read(changePasswordUseCaseProvider).execute(
          ChangePasswordCommand(
            user: user,
            oldPassword: ref.read(_oldPasswordProvider)!,
            newPassword: ref.read(_newPasswordProvider)!,
            confirmPassword: ref.read(_confirmPasswordProvider)!,
            context: context,
          ),
        );
  }
}
