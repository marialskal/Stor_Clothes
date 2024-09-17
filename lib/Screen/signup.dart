import 'package:flutter/material.dart';
import 'package:untitled2/Widget/customtext.dart';
import 'package:untitled2/Screen/login.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Form(
            key: _formKey,
            child: LayoutBuilder(
              builder: (context, constraints) {
                final screenWidth = constraints.maxWidth;


                return Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[800]),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Center(
                          child: Text(
                            "Welcom Back!",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Center(
                          child: Text(
                            "sign up with your email and password",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        CustomText(
                          hintText: "Enter Your Name",
                          iconData: Icons.person,
                          inputType: TextInputType.text,
                          characterLimit: 50,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter an email';
                            }
                            return null;
                          },
                        ),
                        CustomText(
                          hintText: "Enter Your Email",
                          iconData: Icons.person,
                          inputType: TextInputType.emailAddress,
                          characterLimit: 50,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter an email';
                            }
                            return null;
                          },
                        ),
                        CustomText(
                          hintText: "Enter Your Password",
                          iconData: Icons.password,
                          inputType: TextInputType.visiblePassword,
                          characterLimit: 12,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                          isPassword: true,
                        ),
                        CustomText(
                          hintText: "Enter Your Password Again",
                          iconData: Icons.password,
                          inputType: TextInputType.visiblePassword,
                          characterLimit: 12,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                          isPassword: true,
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                            width: screenWidth,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Form is valid, enable login button
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Login()),
                                  );
                                } else {
                                  // Form is invalid, disable login button
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue[800],
                                onPrimary: Colors.white,
                                elevation: 5,
                                padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.2,
                                  vertical: 10,
                                ),
                              ),
                              child: const Text("Log in"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Divider(
                          color: Colors.blue[800],
                          thickness: 1.5,
                          endIndent: 10,
                          indent: 10,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Do have an account?    ",
                              style: TextStyle(fontSize: 19),
                            ),
                            InkWell(
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                  color: Colors.blue[800],
                                  fontSize: 23,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Login()),
                                );
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}