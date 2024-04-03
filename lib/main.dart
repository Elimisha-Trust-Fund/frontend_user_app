import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'login.dart';




void main()
{


  void main() {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    runApp(MyApp());
  }

// whenever your initialization is completed, remove the splash screen:
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

