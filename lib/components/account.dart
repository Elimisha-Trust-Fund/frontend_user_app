import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class account extends StatelessWidget {
  const account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFDEE1E6),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Color(0xFF2AD600),
                  child: Text(
                    'F',
                    style: TextStyle(
                      color: Color(0xFF0F4C00),
                      fontSize: 120,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(
                  'Account',
                  style: GoogleFonts.abrilFatface(
                    color: Color(0xFF171A1F),
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                  SizedBox(height: 20),
                  Text(
                    'Settings',
                    style: GoogleFonts.abrilFatface(
                      color: Color(0xFF171A1F),
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Log OUT',
                    style: GoogleFonts.abrilFatface(
                      color: Color(0xFF171A1F),
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
