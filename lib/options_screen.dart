import 'package:flutter/material.dart';
import 'package:flutter_custom_error_screen/home_screen.dart';

class OptionsScreen extends StatefulWidget {
  const OptionsScreen({super.key});

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  bool noErrorVal = true;
  bool withCustomErrorScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Options"),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          alignment: Alignment.center,
          child: Text(
            "Home Screen",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                "No Error",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Switch(
                value: noErrorVal,
                onChanged: (val) {
                  setState(() {
                    noErrorVal = !noErrorVal;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(
                "Screen With Error",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Switch(
                value: !noErrorVal,
                onChanged: (val) {
                  setState(() {
                    noErrorVal = !noErrorVal;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(
                "Custom Screen With Error",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Switch(
                value: !withCustomErrorScreen,
                onChanged: (val) {
                  setState(() {
                    withCustomErrorScreen = !withCustomErrorScreen;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
