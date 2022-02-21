import 'package:flutter/material.dart';
import 'package:myfirstapp/constants.dart';
import 'package:myfirstapp/screens/login/log_in.dart';
import 'package:myfirstapp/screens/signup/sign_up.dart';
import 'package:myfirstapp/screens/signup/widgets.dart';
import 'package:myfirstapp/widgets/custom_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.06),
            const Text(
              welcomeText,
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Font1',
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/login/man_blue.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.03),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
              text: loginText,
              boxColor: honeyColor,
              textColor: Colors.white,
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignupScreen();
                    },
                  ),
                );
              },
              text: signupText,
              boxColor: roseColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
