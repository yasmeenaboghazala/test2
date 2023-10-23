import 'package:final_project/pages/login.dart';
import 'package:final_project/pages/signup.dart';

import 'package:final_project/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        
        
        "/":(context)=> welcome(),
        
        "/login":(context)=> login(),
        "/signup":(context)=> signup(),
        },
      title: 'Final',
    
    );
  }
}
