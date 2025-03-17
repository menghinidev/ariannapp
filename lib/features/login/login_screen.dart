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

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
            Positioned.fill(
              child: Align(
                alignment: const Alignment(0, 0.5),
                child: _LoginForm(emailController: emailController, passwordController: passwordController),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: DistanceProvider.screenInsets.padding,
      elevation: DistanceProvider.mediumDistance,
      shape: DistanceProvider.cardRadius.roundedShape,
      child: Padding(
        padding: DistanceProvider.screenInsets.padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            DistanceProvider.mediumDistance.spacer(),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            DistanceProvider.mediumDistance.spacer(),
            _LoginButton(
              emailController: emailController,
              passwordController: passwordController,
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginButton extends ConsumerWidget {
  const _LoginButton({
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () => ref.read(loginUseCaseProvider).execute(
            LoginCommand(
              email: emailController.text,
              password: passwordController.text,
              context: context,
            ),
          ),
      child: const Text('Login'),
    );
  }
}
