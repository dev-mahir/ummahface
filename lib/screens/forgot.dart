import 'package:flutter/material.dart';
import 'package:ummahface/widgets/text_input.dart';
import 'package:ummahface/widgets/full_btn.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Center the content vertically
            children: [
              const Text(
                "Forgot your password?",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Email"),
                  const SizedBox(height: 5),
                  CustomTextField(
                    controller: emailController,
                    hintText: "Enter your email",
                  ),
                  const SizedBox(height: 20),
                  CustomButton(text: "Recover password", onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
