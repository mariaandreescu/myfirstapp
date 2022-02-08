import 'package:flutter/material.dart';
import 'package:myfirstapp/components/custom_button.dart';
import 'package:myfirstapp/constants.dart';
import 'package:myfirstapp/screens/login/components/background.dart';

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
              "Welcome to Notes",
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
              onPressed: () {},
              text: "Login",
              boxColor: honeyColor,
              textColor: Colors.white,
            ),
            CustomButton(
              onPressed: () {},
              text: "Signup",
              boxColor: roseColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
