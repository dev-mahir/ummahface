import 'package:flutter/material.dart';
import 'package:ummahface/widgets/text_input.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool agreeToTerms = false;
  late String selectedGender;

  void handleCheckbox(bool? value) {
    setState(() {
      agreeToTerms = value ?? false;
    });
  }

  void handleSignUp() {
    print("Sign Up Clicked");
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
                    border: Border.all(color: Colors.white, width: 3),
                    image: const DecorationImage(
                      image: AssetImage('images/ummahface.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "Create an Account 🚀",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),

              const Text("Enter your email"),
              const SizedBox(height: 5),
              CustomTextField(controller: emailController, hintText: "Email"),
              const SizedBox(height: 20),

              Text("Password"),
              const SizedBox(height: 5),
              CustomTextField(
                controller: passwordController,
                hintText: "Password",
                isPassword: true,
              ),
              const SizedBox(height: 20),

              const Text("Confirm Password"),
              const SizedBox(height: 5),
              CustomTextField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                isPassword: true,
              ),
              const SizedBox(height: 10),

              const Text("Gender"),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                items:
                    ["Male", "Female"]
                        .map(
                          (gender) => DropdownMenuItem(
                            value: gender,
                            child: Text(gender),
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedGender = value!;
                  });
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: agreeToTerms, onChanged: handleCheckbox),

                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: "By creating your account, you agree to our ",
                        style: const TextStyle(color: Colors.black),
                        children: [
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () {
                                print("Terms Clicked");
                              },
                              child: const Text(
                                "Terms and Privacy Policy",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

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
                  onPressed: handleSignUp,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: const TextStyle(color: Colors.black),
                    children: [
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            print("Sign In Clicked");
                          },
                          child: const Text(
                            "Sign in here!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
