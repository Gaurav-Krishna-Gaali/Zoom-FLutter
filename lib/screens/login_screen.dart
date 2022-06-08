import 'package:flutter/material.dart';
import 'package:zoom_flutter/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Start or join a meeting',
           // ignore: unnecessary_const
           style: const TextStyle(
             fontSize: 24, 
             fontWeight: FontWeight.bold,
             ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 40.0),
               child: Image.asset('assets/images/onboarding.jpg'),
             ),
             CustomButton(text: 'Google Sign in',onPressed: () {},)
        ],
      )
    );
  }
}