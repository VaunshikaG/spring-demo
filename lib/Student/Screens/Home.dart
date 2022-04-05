import 'package:flutter/material.dart';
import '../theme.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: CustomTheme.Blue1,
        centerTitle: true,
        title: Text(
          'Student Management',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Welcome\nto\nStudent Management',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: CustomTheme.Blue1,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(
        backgroundColor: CustomTheme.Blue4,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Student Management',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: CustomTheme.Blue1,
              ),
            ),

            ListTile(
              title: Text(
                'Register Student',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: CustomTheme.Blue1,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Student Details',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: CustomTheme.Blue1,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
