import 'package:flutter/material.dart';
import 'package:elimisha_trust_fund_app/components/my_button.dart';
import 'package:elimisha_trust_fund_app/components/my_textfield.dart'; // Import MyTextField widget

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController(); // Define email controller

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        // AppBar title if needed
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/elimishafund.png',
          ),
          Text(
            'Sorry!\n Enter your email to receive a reset link',
            style: TextStyle(
              fontSize: 17,
              color: Color(0xFF171A1F),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          MyTextField(
            controller: emailController,
            hintText: 'Email',
            obscureText: false,
          ),
          SizedBox(height: 20),
          MyButton(
            onTap: () {
              // Implement reset logic here
            },
            child: Center(
              child: Text(
                'Reset Password',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
