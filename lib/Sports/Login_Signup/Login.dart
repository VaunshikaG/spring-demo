import 'package:flutter/material.dart';

import '../Home/Home.dart';
import '../theme.dart';
import 'Signup.dart';

class Loginpg extends StatefulWidget {
  @override
  State<Loginpg> createState() => _LoginpgState();
}

class _LoginpgState extends State<Loginpg> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.Blue22,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //  gif
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                // width: MediaQuery.of(context).size.width * 0.2,
                margin: const EdgeInsets.fromLTRB(20, 150, 20, 10),
                // child: Image.asset(
                //   'assets/gifs/Splash.gif',
                //   height: 300,
                // ),
              ),

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
                  keyboardType: TextInputType.emailAddress,
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
                  obscureText: _isObscure,
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
                        icon: Icon(_isObscure
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                  ),
                ),
              ),
              SizedBox(height: 10),

              //  login btn
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
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              //  forgot pswd
              Container(
                child: TextButton(
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                      color: MyTheme.Blue1,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),

              //  sign up
              Container(
                margin: const EdgeInsets.only(top: 150),
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
                            return Signuppg();
                          }));
                    },
                    child: Text(
                      'Sign up >',
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
