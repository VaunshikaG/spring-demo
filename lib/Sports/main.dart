import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:sports/Sports/theme.dart';

import 'Screens/Registration/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(fontFamily: 'Nunito'),
        home: SplashScreenView(
          navigateRoute: Loginpg(),
          backgroundColor: MyTheme.Blue3,
          duration: 3000,
          // imageSize: 100,
          // imageSrc: "Splash.gif",
          text: "SPORTS\nMANAGEMENT",
          textType: TextType.TyperAnimatedText,
          textStyle: TextStyle(
              fontSize: 30.0,
              color: MyTheme.Blue1,
              fontWeight: FontWeight.bold
          ),
          // backgroundColor: MyTheme.Coral2,
        ),
      ),
    );
  }
}

