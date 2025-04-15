import 'package:flutter/material.dart';
import 'package:flutter_custom_error_screen/custom_error_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_screen.dart';
import 'options_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final showCustomError = ref.watch(showCustomScreen);
        print(showCustomError);
        return MaterialApp(
          theme: ThemeData(primaryColor: Color(0xff2c62ff)),
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            if (showCustomError) {
              ErrorWidget.builder = (errorDetails) {
                debugPrint("error == ${errorDetails.summary}");
                debugPrint("Error Screen == ${errorDetails.context}");
                return CustomErrorScreen();
              };
            } else {
              ErrorWidget.builder = (errorDetails) {
                debugPrint("error == ${errorDetails.summary}");
                debugPrint("Error Screen == ${errorDetails.context}");
                return ErrorWidget(errorDetails.exception);
              };
            }

            return child!;
          },
          home: OptionsScreen(),
        );
      },
    );
  }
}

// For Showing the Error in our app
final showError = StateProvider((ref) => false);
// For Showing the Custom Error Screen in our app
final showCustomScreen = StateProvider((ref) => false);
