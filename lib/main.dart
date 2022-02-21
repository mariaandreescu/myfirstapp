import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:myfirstapp/constants.dart';
import 'package:myfirstapp/screens/welcome/welcome.dart';

Future<void> main() async {
  await Hive.initFlutter(); //init hive
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(
        primaryColor: greyColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}
