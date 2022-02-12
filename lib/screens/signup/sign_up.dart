import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirstapp/screens/signup/components/body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return const Scaffold(
      body: Body(),
    );
  }
}
