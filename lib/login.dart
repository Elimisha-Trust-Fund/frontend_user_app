import 'package:elimisha_trust_fund_app/components/my_button.dart';
import 'package:elimisha_trust_fund_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget
{
  Login({super.key});

  //text editing contrillers
  final admissionController = TextEditingController();
  final passwordController = TextEditingController();

  //log user in
  void logUserIn() {}

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      backgroundColor: Colors.white,
      body: SafeArea
        (
        child: Center
          (
          child: SingleChildScrollView(
          child: Column
            (
            children: [
              SizedBox(height: 20,),
                  //Title
                  Text
                    (style: TextStyle(color: Colors.black          ) ,
                      "Elimisha Trust Fund \n Masomo kwa wote"
                     ),

                  //logo

                  Image.asset
                  (
                      'images/elimisha.jpg',
                  ),

                  //ADM no.
              MyTextField(
                controller: admissionController,
                hintText: 'Admission No....' ,
                obscureText: false,

              ),

                const SizedBox(height:5),

                  //Password
             MyTextField(
               controller: passwordController,
               hintText: 'Password....',
               obscureText: true,
             ),

              const SizedBox(height:10),

                  //forgot password
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                       'Forgot password? ',
                        style: TextStyle(color: Colors.black),
                       ),
                     ],
                    ),
                   ),

          const SizedBox(height:25),
                  //login button
              MyButton(
                  onTap: logUserIn),
                ],
              ),
          ),
        ),
      ),
      );
  }
}
