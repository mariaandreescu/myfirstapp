import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirstapp/screens/login/widgets/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return const Scaffold(
      body: Body(),
    );
  }
}
