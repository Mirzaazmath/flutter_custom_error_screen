import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        title: Text("DashBoard"),
      ),
      body: Center(
        child: Text("Example for Error Screen ${error!}"),
      ),
    );
  }
}
final error = null;