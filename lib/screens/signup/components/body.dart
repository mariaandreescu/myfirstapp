import 'package:flutter/material.dart';
import 'package:myfirstapp/components/custom_button.dart';
import 'package:myfirstapp/constants.dart';
import 'package:myfirstapp/screens/login/components/already_have_an_account_check.dart';
import 'package:myfirstapp/screens/login/components/rounded_input_field.dart';
import 'package:myfirstapp/screens/login/components/rounded_password_field.dart';
import 'package:myfirstapp/screens/login/log_in.dart';
import 'package:myfirstapp/screens/signup/components/background.dart';
import 'package:myfirstapp/screens/signup/components/or_divider.dart';
import 'package:myfirstapp/screens/signup/components/social_icon.dart';

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
              "signup",
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Font1',
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/login/signup.png",
              height: size.height * 0.30,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: 'Your input here',
              icon: Icons.person,
              onChanged: (String value) {},
            ),
            RoundedPasswordField(
              onChanged: (String value) {},
            ),
            SizedBox(height: size.height * 0.03),
            CustomButton(
              onPressed: () {},
              text: "SignUp",
              boxColor: honeyColor,
              textColor: Colors.white,
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  press: () {},
                  iconSrc: "assets/images/social_media/facebook.svg",
                ),
                SocialIcon(
                  press: () {},
                  iconSrc: "assets/images/social_media/twitter.svg",
                ),
                SocialIcon(
                  press: () {},
                  iconSrc: "assets/images/social_media/google.svg",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
