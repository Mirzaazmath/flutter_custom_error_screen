import 'package:flutter/material.dart';
import 'package:flutter_custom_error_screen/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Options")),
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
        child: Consumer(
          builder: (context, ref, child) {
            final noErrorVal = ref.watch(showError);
            final withCustomErrorScreen = ref.watch(showCustomScreen);

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text(
                    "Screen With Error",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  trailing: Switch(
                    value: noErrorVal,
                    onChanged: (val) {
                      ref.read(showError.notifier).update((state) => val);
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    "Custom Screen With Error",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  trailing: Switch(
                    value: withCustomErrorScreen,
                    onChanged: (val) {
                      ref
                          .read(showCustomScreen.notifier)
                          .update((state) => val);
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
