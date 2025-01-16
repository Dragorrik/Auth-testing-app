import 'package:auth_test_app/auth_services/email_pass_auth.dart';
import 'package:auth_test_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Welcome to Home Page'),
        ElevatedButton(
          onPressed: () {
            AuthService().logout(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          },
          child: const Text('Logout'),
        ),
      ],
    ));
  }
}
