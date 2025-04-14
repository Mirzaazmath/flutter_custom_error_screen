import 'package:flutter/material.dart';

class CustomErrorScreen extends StatelessWidget {
  const CustomErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 25,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Error!",
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey.shade200,
                      color: Colors.red,
                      value: 100,
                    ),
                  ),
                ],
              ),

              Text(
                "Something Went Wrong\nThere might be an issue No Need to Worry!",
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),

              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.center,
                child: Text(
                  "TRY AGAIN",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
