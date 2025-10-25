import 'package:client/features/auth/view/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
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
            hintText: "Name",
          ),
          const SizedBox(
            height: 15,
          ),
          CustomField(hintText: "Email"),
          const SizedBox(
            height: 15,
          ),
          CustomField(hintText: "Password"),
        ],
      ),
    );
  }
}
