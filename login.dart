import 'package:elimisha_trust_fund_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget
{
  const Login({super.key});

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
          child: Column
            (
            children: [
              SizedBox(height: 50,),
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
              MyTextField(),

                  //Password
             MyTextField(),

                  //forgot password

                  //login button
                ],
              ),
          ),
        ),
      );
  }
}
