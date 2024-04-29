import 'package:elimisha_trust_fund_app/components/my_button.dart';
import 'package:elimisha_trust_fund_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class payment extends StatelessWidget {

  final TextEditingController amountController = TextEditingController();
  final TextEditingController mpesaController =TextEditingController();



   payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFDEE1E6),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                    'Payment',
              style: TextStyle(
                color: Color(0xFF171A1F),
                fontSize: 18,
                fontWeight: FontWeight.bold,)
                ),
                SizedBox(height: 10,),
                CircleAvatar(
                  backgroundColor: Color(0xFF2AD600),
                  radius: 100,
                  child: Text(
                    'F',
                    style: TextStyle(
                      color: Color(0xFF0F4C00),
                      fontSize: 120,
                    ),
                  ),
                ),

                SizedBox(height: 5,),

                //ID
                Text('AEDT/24/7859', style: TextStyle(color: Color(0xFF761F7C),fontSize: 14),),
                SizedBox(height: 10,),
                //Name
                Text('Fatime Hashim',style: TextStyle(color: Color(0xFF171A1F),fontSize: 18),),
                SizedBox(height: 10,),
                //Admin NO.
                Text('BSIT/202/49456',style: TextStyle(color: Color(0xFF171A1F),fontSize: 24,),),
                //Umma
                Text('Umma University', style: TextStyle(color: Color(0xFF171A1F),fontSize: 14),),
                SizedBox(height: 10,),
                //Business No
                Text('Business No:',style: TextStyle(color: Color(0xFF171A1F),fontSize: 24),),
                SizedBox(height: 10,),
                //2384u9
                Text('7842892',style: TextStyle(color: Color(0xFF171A1F),fontSize: 24),),
                //Account Number
                Text('Account Number',style: TextStyle(color: Color(0xFF171A1F),fontSize: 24),),
                Text('AEDT/24/7859',style: TextStyle(color: Color(0xFF171A1F),fontSize: 24),),


                SizedBox(height: 10,),
                //Amount textfield
                MyTextField(
                    controller:amountController ,
                    hintText: 'Amount',
                    obscureText: false,
                ),
                //Enter mpesa No. pay
                MyTextField(
                    controller: mpesaController,
                    hintText: 'Enter Mpesa No to pay ',
                    obscureText: false,
                ),


                //button pay
               MyButton(onTap: () => null,
                   child: Center(
                     child: Text(
                       'Pay'
                     ),
                   ),
               ),






              ],
            ),
          ),
        ),
      ),
    );
  }
}
