import 'package:flutter/material.dart';
import 'package:ng_chat/screens/home_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Chat App',
      theme:ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xfffef9eb)
      ),
      home:HomeScreen(),
    );
  }
}
