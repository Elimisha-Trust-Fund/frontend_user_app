import 'package:flutter/material.dart';
import 'login.dart';



void main()
{
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
 // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp(
    /*debugShowCheckedModeBanner: false,
    home:Scaffold(
      body: Center(
        child: Text("Elimisha Trust Fund"),
      ),
    )*/
  ),
  );
// FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget
{
    @override
  Widget build(BuildContext context)
    {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
   Future.delayed(Duration(seconds: 3),()
       {
         Navigator.pushReplacement(
             context,
             MaterialPageRoute(builder: (context) => Login()),
         );
       }
       );

    return Scaffold(
      body: Center(
        child: Text("Elimisha Trust Fund"),
      ),
    );

  }
}

