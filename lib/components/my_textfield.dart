import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText && _isObscured,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          fillColor: Color(0xFF00FFFFFF),
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.black54),
          suffixIcon: widget.obscureText
              ? IconButton(
            padding: EdgeInsetsDirectional.only(end: 10.0),
            icon: _isObscured
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
          )
              : null,
        ),
      ),
    );
  }
}
