import 'package:client/core/theme/app_pallete.dart';
import 'package:client/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:client/features/auth/view/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up.",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomField(
                controller: nameController,
                hintText: "Name",
              ),
              const SizedBox(
                height: 15,
              ),
              CustomField(
                controller: emailController,
                hintText: "Email",
              ),
              const SizedBox(
                height: 15,
              ),
              CustomField(
                controller: passwordController,
                hintText: "Password",
                isObscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthGradientButton(),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Already have an Account ? ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                          text: "Sign In",
                          style: TextStyle(
                            color: Pallete.gradient2,
                            fontWeight: FontWeight.bold,
                          )),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
