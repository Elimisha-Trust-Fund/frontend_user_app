import 'package:flutter/material.dart';

class work_study extends StatelessWidget {
  const work_study({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFDEE1E6),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text(
                  'Work Study',
                  style: TextStyle(
                    color: Color(0xFF171A1F),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                Align(
                  alignment: Alignment.topLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Umma University',
                      style: TextStyle(
                        color: Color(0xFF171A1F),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: CircleAvatar(
                        radius: 70,
                        child: const Text(
                          'F',
                          style: TextStyle(
                            fontSize: 100,
                            color: Color(0xFF0F4C00),
                          ),
                        ),
                        backgroundColor: const Color(0xFF2AD600),
                      ),
                    ),
                    const SizedBox(width: 50), // Space between avatar and texts
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'AEDT/24/7859',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF171A1F),
                          ),
                        ),
                        const SizedBox(height: 10), // Space between two texts
                        const Text(
                          'Fatime Hashim',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF171A1F),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'BSIT/2022/49456',
                          style: TextStyle(
                            color: Color(0xFF171A1F),
                            fontSize: 24,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 28,),
                Container(
                  height: 140,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    )
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Department ',
                          style:TextStyle(
                            color: Color(0xFF171A1F),
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Finance and Accounting',
                          style: TextStyle(
                          color: Color(0xFF761F7C),
                        ),)
                      ],
                    ),
                  ),
                ),


                Container(
                  height: 140,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      )
                  ),
                  child: Center(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Duty Station',
                          style:TextStyle(
                            color: Color(0xFF171A1F),
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                            'Ledger Filling',
                        style: TextStyle(
                          color: Color(0xFF761F7C)
                        ),)
                      ],
                    ),
                  ),
                ),


                Container(
                  height: 140,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      )
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Repot Time',

                        ),
                        Text(
                          '4:00pm-5:00pm',
                          style:TextStyle(
                            color: Color(0xFFDE3B40),

                          ),
                        ),
                        Text(
                            'Day',
                          
                        ),
                        Text('Monday-Friday',
                          style: TextStyle(
                            color: Color(0xFF761F7C)
                          ),
                        )
                      ],
                    )
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
