import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/login/login_page_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreenRoute extends GoRoute {
  LoginScreenRoute()
      : super(
          path: pagePath,
          builder: (context, state) => const LoginScreen(),
        );

  static String pagePath = '/login';
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.primaryFixed,
      body: CustomPaint(
        painter: LoginPaintBackground(),
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/logo.png'),
              ),
            ),
            const Positioned.fill(
              child: Align(
                alignment: Alignment(0, 0.5),
                child: _LoginForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  const _LoginForm();

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  String? error;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordController.addListener(_cleanError);
    super.initState();
  }

  @override
  void dispose() {
    passwordController.removeListener(_cleanError);
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _cleanError() {
    if (error != null) {
      setState(() {
        error = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: DistanceProvider.screenInsets.padding,
      elevation: DistanceProvider.mediumDistance,
      shape: DistanceProvider.cardRadius.roundedShape,
      child: Padding(
        padding: DistanceProvider.screenInsets.padding,
        child: AutofillGroup(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
                autofillHints: const [AutofillHints.email],
              ),
              DistanceProvider.mediumDistance.spacer(),
              TextField(
                controller: passwordController,
                obscureText: true,
                autofillHints: const [AutofillHints.password],
                decoration: InputDecoration(
                  labelText: 'Password',
                  errorText: error,
                ),
              ),
              DistanceProvider.mediumDistance.spacer(),
              _LoginButton(
                emailController: emailController,
                passwordController: passwordController,
                setError: (error) => setState(() => this.error = error),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends ConsumerWidget {
  const _LoginButton({
    required this.emailController,
    required this.passwordController,
    required this.setError,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final void Function(String error) setError;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () => ref
          .read(loginUseCaseProvider)
          .execute(
            LoginCommand(
              email: emailController.text,
              password: passwordController.text,
              context: context,
            ),
          )
          .then((value) => value.isError ? setError('Password errata') : null),
      child: const Text('Login'),
    );
  }
}
