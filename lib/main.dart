import 'package:flutter/material.dart';
import 'package:flutter_store/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 4, 125, 141)        
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
      
    );
  }
}