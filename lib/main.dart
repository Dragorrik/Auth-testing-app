import 'package:auth_test_app/firebase_options.dart';
import 'package:auth_test_app/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(color: Colors.grey), // Label text style
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey), // Default border
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.black, width: 2.0), // Focused border
            borderRadius: BorderRadius.circular(10.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Colors.red, width: 2.0), // Error border
            borderRadius: BorderRadius.circular(10.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey), // Disabled border
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Auth Test App',
      home: LoginPage(),
    );
  }
}
