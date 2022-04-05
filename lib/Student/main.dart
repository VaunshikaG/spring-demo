import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../Sports/theme.dart';
import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Nunito'),
      home: SplashScreenView(
        navigateRoute: Home(),
        backgroundColor: MyTheme.Blue22,
        duration: 3000,
        text: "STUDENT\nMANAGEMENT",
        textType: TextType.TyperAnimatedText,
        textStyle: TextStyle(
            fontSize: 30.0,
            color: MyTheme.Blue1,
            fontWeight: FontWeight.bold
        ),
        // backgroundColor: MyTheme.Coral2,
      ),
    );
  }
}

