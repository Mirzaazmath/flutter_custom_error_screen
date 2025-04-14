import 'package:flutter/material.dart';
import 'package:flutter_custom_error_screen/custom_error_screen.dart';

import 'home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context,child){
        ErrorWidget.builder = (errorDetails){
          print("error == ${errorDetails.summary}");
          return CustomErrorScreen();
        };
        return child!;
      },
      home: HomeScreen(),
    );
  }
}
