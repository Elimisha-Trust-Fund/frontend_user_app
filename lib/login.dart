import 'package:elimisha_trust_fund_app/components/forgot_password.dart';
import 'package:elimisha_trust_fund_app/components/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:elimisha_trust_fund_app/components/my_button.dart';
import 'package:elimisha_trust_fund_app/components/my_textfield.dart';

class Login extends StatelessWidget {
  // Text editing controllers
  final TextEditingController IDController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Log user in
  void logUserIn() {
    // Implement your login logic here
  }

  // Sign user in
  void signUserUp(BuildContext context)
  {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => SignUp()),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Set the background color to white
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  // Logo

                  Image.asset(
                    'images/elimishafund.png',
                  ),
                  // Title
                                  Text(
                    'Welcome Back,  \n Login',
                    style: TextStyle(
                      color: Color(0xFF171A1F),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Admission No.
                  SizedBox(height: 5),
                  MyTextField(
                    controller: IDController,
                    hintText: 'ID',
                    obscureText: false,
                  ),
                  const SizedBox(height: 0),
                  // Password
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password ',
                    obscureText: true,
                    // Add decoration here if needed
                  ),
                  const SizedBox(height: 5),
                  // Forgot password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap :()
                        {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ForgotPassword()),
                              );
                        },

                       child: Text(
                          'Forgot password? ',
                          style: TextStyle(color: Colors.blue),
                        ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Login button
                  MyButton(
                    onTap: logUserIn,
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  // Sign Up button
                  MyButton(
                    onTap: () => signUserUp(context),
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xFF0F4C00),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
