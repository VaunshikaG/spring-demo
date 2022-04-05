import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Home/Home.dart';
import '../theme.dart';
import 'Login.dart';

class Signuppg extends StatefulWidget {
  @override
  State<Signuppg> createState() => _SignuppgState();
}

class _SignuppgState extends State<Signuppg> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.Blue22,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 180),

              //  first name
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextFormField(
                  cursorColor: MyTheme.Blue1,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyTheme.Blue1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: 'First name',
                  ),
                ),
              ),
              SizedBox(height: 10),

              //  last name
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextFormField(
                  cursorColor: MyTheme.Blue1,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyTheme.Blue1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: 'Last name',
                  ),
                ),
              ),
              SizedBox(height: 10),

              //  mobile
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextFormField(
                  cursorColor: MyTheme.Blue1,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyTheme.Blue1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: 'Mobile number',
                  ),
                ),
              ),
              SizedBox(height: 10),

              //  username
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextFormField(
                  cursorColor: MyTheme.Blue1,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyTheme.Blue1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: 'Username',
                  ),
                ),
              ),
              SizedBox(height: 10),

              //  password
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextFormField(
                  cursorColor: MyTheme.Blue1,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: _isObscure1,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyTheme.Blue1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure1
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isObscure1 = !_isObscure1;
                          });
                        }),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextFormField(
                  cursorColor: MyTheme.Blue1,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: _isObscure2,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyTheme.Blue1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: 'Confirm Password',
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure2
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isObscure2 = !_isObscure2;
                          });
                        }),
                  ),
                ),
              ),
              SizedBox(height: 10),

              //  sign up btn
              Container(
                width: MediaQuery.of(context).size.width * 3,
                child: Card(
                  color: MyTheme.Blue1,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: MyTheme.Blue3),
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(10),
                    elevation: 5,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return Homepg();
                          }));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              //  login
              Container(
                margin: const EdgeInsets.only(top: 80),
                // width: MediaQuery.of(context).size.width * 2,
                child: Card(
                  color: MyTheme.Blue1,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: MyTheme.Blue3),
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    elevation: 5,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return Loginpg();
                          }));
                    },
                    child: Text(
                      'Login >',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
