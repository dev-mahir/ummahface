import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ummahface/widgets/text_input.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;

  void handleCheckbox(bool? value) {
    setState(() {
      rememberMe = value ?? false;
      print(rememberMe);
    });
  }

  void handleSignIn() {
    print("ok");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ), // Border color and width
                    image: DecorationImage(
                      image: AssetImage('images/ummahface.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: const Text(
                  "Welcome Back! 👋",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),

              const SizedBox(height: 30),
              const Text("Enter your email"),

              const SizedBox(height: 5),

              CustomTextField(controller: emailController, hintText: "Email"),
              const SizedBox(height: 20),
              const Text("Enter Your Password"),
              const SizedBox(height: 5),

              CustomTextField(
                isPassword: true,
                controller: passwordController,
                hintText: "Password",
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value: rememberMe, onChanged: handleCheckbox),
                      const Text("Remember me"),
                    ],
                  ),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    handleSignIn();
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              const Text.rich(
                TextSpan(
                  text: "If you don’t have an account, You can ",
                  children: [
                    TextSpan(
                      text: "Register here!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
