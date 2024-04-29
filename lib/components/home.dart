import 'package:elimisha_trust_fund_app/components/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:elimisha_trust_fund_app/components/payment.dart';
import 'package:elimisha_trust_fund_app/components/work_study.dart';
import 'package:elimisha_trust_fund_app/components/history.dart'; // Importing history component

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0; // Default starting index
  late PageController _pageController; // Controller for the PageView

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
    _pageController.jumpToPage(index); // Change to the corresponding page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index; // Keep GNav in sync when swiping
          });
        },
        children: [
          _homeContent(), // Home page content
          work_study(), // Work-study page content
          payment(), // Payment page content
          history(), // History page content
          account(),
        ],
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Color(0xFF1E2128),
        gap: 0,
        color: Colors.grey,
        activeColor: Color(0xFF2AD600),
        selectedIndex: _selectedIndex,
        onTabChange: _onTabChange,
        tabs: [
          GButton(icon: Icons.home, text: ''),
          GButton(icon: Icons.book, text: ''),
          GButton(icon: Icons.wallet, text: ''),
          GButton(icon: Icons.history, text: ''),
          GButton(icon: Icons.verified_user, text: ''),
        ],
      ),
    );
  }

  Widget _homeContent() {
    return Container(
      color: Color(0xFFDEE1E6),
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xFF2AD600),
                radius: 100,
                child: Text(
                  'A',
                  style: TextStyle(
                    fontSize: 120,
                    color: Color(0xFF0F4C00),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text('AEDT/24/7859', style: TextStyle(color: Color(0xFF761F7C), fontSize: 15, )),
              SizedBox(height: 10),
              Text('Anthony Njuguna', style: TextStyle(color: Color(0xFF171A1F), fontSize: 20)),
              SizedBox(height: 10),
              Text('BSIT/2022/49456', style: TextStyle(color: Color(0xFF171A1F), fontSize: 30)),
              SizedBox (height: 10,),
              Text('Umma University', style: TextStyle(color: Color(0xFF171A1F))),

              SizedBox(height: 60,),

              Row(
                children: [
                  Container(
                    width: 210,
                    height: 129,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFDEE1E6),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Months Due Pay',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                         SizedBox(height: 10,),
                          Text(
                            '1',
                            style: TextStyle(
                              color: Color(0xFFFF0000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 199,
                    height: 129,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15)),
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFDEE1E6),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Amount Due in Ksh:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                              '-3.600',
                            style: TextStyle(
                              color: Color(0xFFFF0000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 210,
                    height: 129,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15)),
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFDEE1E6),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Semester',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            '5',
                            style: TextStyle(
                            color: Color(0xFF171A1F),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 199,
                    height: 129,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(15)),
                      color: Color(0xFFFFFFFF),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFDEE1E6),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Number of Issues',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            '0',
                            style: TextStyle(
                              color: Color(0xFF171A1F),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
