import 'package:auth_test_app/auth_services/email_pass_auth.dart';
import 'package:auth_test_app/auth_services/google_auth.dart';
import 'package:auth_test_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Welcome to Home Page',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            EmailPassAuthService().logout(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0XFFBAE162),
            padding: EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Log Out',
            style: TextStyle(
              fontSize: screenWidth * 0.05,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ));
  }
}
