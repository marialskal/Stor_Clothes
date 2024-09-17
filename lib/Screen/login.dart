

import 'package:flutter/material.dart';
import 'package:untitled2/Widget/customtext.dart';
import 'package:untitled2/Screen/homepage.dart';
import 'package:untitled2/Screen/signup.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView
        (
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 50,),
                Container(
                  height: screenHeight * 0.2,
                  child: Image.asset("images/login.png"),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        "Log In ",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800]),
                      ),
                    ),
                  const  SizedBox(
                      height: 20,
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
)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        const Text("Remember me"),
                      ],
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: const Text(
                        "Forgot password?",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                    width: screenWidth,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        } else {

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
                      child:const Text("Log in"),
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
                      "Do not have an account?     ",
                      style: TextStyle(fontSize: 19),
                    ),
                    InkWell(
                      child: Text(
                        "sign up",
                        style: TextStyle(color: Colors.blue[800], fontSize: 23),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}