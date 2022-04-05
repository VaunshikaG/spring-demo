import 'package:flutter/material.dart';
import 'package:sports/Sports/theme.dart';

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
        backgroundColor: MyTheme.Blue1,
        title: Text('Student Management'),
      ),
    );
  }
}
