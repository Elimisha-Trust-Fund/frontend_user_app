import 'package:flutter/material.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<history> {
  int? selectedYear; // Nullable to allow a default unselected state
  final List<int> years = List.generate(5, (index) => 2020 + index); // Years from 1970 to 2019

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEE1E6),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFF2AD600),
                  radius: 100,
                  child: Text(
                    'F',
                    style: TextStyle(
                      fontSize: 120,
                      color: Color(0xFF0F4C00),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text('AEDT/24/7895', style: TextStyle(fontSize: 14, color: Color(0xFF761F7C))),
                SizedBox(height: 10),
                Text('Fatime Hashim', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF171A1F))),
                SizedBox(height: 10),
                Text('BSIT/2022/49456', style: TextStyle(fontSize: 24, color: Color(0xFF171A1F))),
                SizedBox(height: 10),
                Text('Umma University', style: TextStyle(fontSize: 14, color: Color(0xFF171A1F))),
                SizedBox(height: 10),
                Container(
                  width: 195,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    border: Border.all(color: Color(0xFF2AD600)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child:
                      DropdownButton<int>(
                        value: selectedYear,
                        hint: Text("2020"),
                        items: years.map((int year) {
                          return DropdownMenuItem<int>(
                            value: year,
                            child: Text(year.toString()),
                          );
                        }).toList(),
                        onChanged: (int? newValue) {
                          setState(() {
                            selectedYear = newValue;
                          });
                        },
                        underline: SizedBox(),
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        dropdownColor: Colors.blueGrey[50],
                        isExpanded: true,
                      ),
                      ),
                      SizedBox(width: 10), // Custom space between text and arrow

                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),

                      ),
                      child:Center(
                        child:  Text(
                            'Month'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20),),

                      ),
                      child:Center(
                        child:  Text(
                            'Payment in ksh'
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'January'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'February'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'March'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'April'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),
                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'May'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'June'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'July'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'August'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'September'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'October'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'November'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                            'December'
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFB),
                        border: Border.all(color: Color(0xFFDEE1E6)),


                      ),
                      child:Center(
                        child:  Text(
                          '0.0',
                          style: TextStyle(
                              color: Color(0xFF2AD600)
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
