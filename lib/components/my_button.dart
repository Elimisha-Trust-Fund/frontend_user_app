import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;

  const MyButton({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF2AD600), // Change color to your preference
          borderRadius: BorderRadius.circular(10),
        ),
        width: 300,
        padding: EdgeInsets.symmetric( vertical: 10),
        child: child,
      ),
    );
  }
}
