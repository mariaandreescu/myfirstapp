import 'package:flutter/material.dart';
import 'package:myfirstapp/constants.dart';
import 'package:myfirstapp/screens/signup/sign_up.dart';
import 'package:myfirstapp/widgets/widgets.dart';
import '../widgets.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundLogin(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            const Text(
              loginText,
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Font1',
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/login/man_phone.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: loginHintText,
              icon: Icons.person,
              onChanged: (String value) {},
            ),
            RoundedPasswordField(
              onChanged: (String value) {},
            ),
            SizedBox(height: size.height * 0.03),
            CustomButton(
              onPressed: () {},
              text: loginText,
              boxColor: honeyColor,
              textColor: Colors.white,
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignupScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
