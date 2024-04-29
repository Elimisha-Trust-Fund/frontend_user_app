import 'package:elimisha_trust_fund_app/components/my_button.dart';
import 'package:elimisha_trust_fund_app/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:elimisha_trust_fund_app/components/home.dart';

class SignUp extends StatelessWidget {
  // Text editing controllers
  final TextEditingController IDController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUserUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //logo
                  Image.asset(
                    'images/elimishafund.png',
                  ),

                  //title
                  Text(
                    'Sign Up to Access your Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF171A1F),
                    ),
                  ),

                  //ID
                  MyTextField(
                    controller: IDController,
                    hintText: 'ID',
                    obscureText: false,
                  ),

                  //Username
                  MyTextField(
                    controller: firstNameController,
                    hintText: 'First name',
                    obscureText: false,
                  ),

                  //password
                  MyTextField(
                    controller: emailController,
                    hintText: 'email',
                    obscureText: false,
                  ),

                  //Confirm Password
                  MyTextField(
                    controller: passwordController,
                    hintText: ' Password',
                    obscureText: true,
                  ),

                  //Button for sign up
                  MyButton(
                    onTap: () => signUserUp(context),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF0F4C00),
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
