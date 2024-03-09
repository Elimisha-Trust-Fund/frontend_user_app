import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget
{
  final controller;//access what user typed in the text field
  final String hintText;
  final bool obscureText;// hide the character of the passwords


  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context)
  {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField
        (
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration
        (
              enabledBorder: OutlineInputBorder
          (
          borderSide: BorderSide(color: Colors.grey,),
              ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey)
      ),
      ),
    );
  }
}
