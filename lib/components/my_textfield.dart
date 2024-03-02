import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget
{
  final controller;//access what user typed in
  final String hintText;
  final bool obscureText;// hide the password


  const MyTextField({
    super.key
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
        obscureText: obscureText,,
        decoration: InputDecoration
        (
        hintText: "Admission No",
        enabledBorder: OutlineInputBorder
          (
          borderSide: BorderSide(color: Colors.grey),
          hintText:hintText,
          // borderRadius: BorderRadius(2px),
        ),
      ),
      ),
    );
  }
}
