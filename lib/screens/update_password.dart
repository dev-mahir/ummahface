import 'package:flutter/material.dart';
import 'package:ummahface/widgets/full_btn.dart';
import 'package:ummahface/widgets/text_input.dart';

class UpdatePassword extends StatefulWidget {
  const UpdatePassword({Key? key}) : super(key: key);

  @override
  _UpdatePasswordState createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Center the content vertically
            children: [
              const Text(
                "Update password",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Enter new password"),
                  const SizedBox(height: 5),
                  CustomTextField(
                    controller: emailController,
                    hintText: "password",
                  ),
                  const SizedBox(height: 20),
                  const Text("Confirm your password"),
                  const SizedBox(height: 5),
                  CustomTextField(
                    controller: emailController,
                    hintText: "password",
                  ),
                  const SizedBox(height: 20),
                  CustomButton(text: "Submit", onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
