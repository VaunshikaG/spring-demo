import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sports/Sports/BLoC/Signup_BloC.dart';
import 'package:sports/Sports/Screens/Registration/Login.dart';
import '../../theme.dart';
import '../Home/Home.dart';

class Signuppg extends StatefulWidget {
  @override
  State<Signuppg> createState() => _SignuppgState();
}

class _SignuppgState extends State<Signuppg> {
  final formKeys = GlobalKey<FormState>();

  bool _isObscure1 = true;
  bool _isObscure2 = true;

  TextEditingController fnameController;
  TextEditingController lnameController;
  TextEditingController mobController;
  TextEditingController emailController;
  TextEditingController pswdController;
  TextEditingController confirm_pswdController;


  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<SignupBLoC>(context, listen: false);

    return new WillPopScope(
      child: Scaffold(
        backgroundColor: MyTheme.Blue4,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 150),
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    // border: Border.all(color: MyTheme.Blue1),
                  ),
                  child: Form(
                    key: formKeys,
                    child: Column(
                      children: [
                        //  first name
                        StreamBuilder(
                          stream: bloc.Name,
                          builder: (context, AsyncSnapshot snapshot) => Card(
                            elevation: 0,
                            margin: const EdgeInsets.only(bottom: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextFormField(
                              controller: fnameController,
                              validator: (String text) {
                                if (text.isEmpty || text.length >= 15) {
                                  return "Please enter name";
                                }
                              },
                              onChanged: (value) => bloc.changeName,
                              cursorColor: MyTheme.Blue1,
                              keyboardType: TextInputType.name,
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
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: MyTheme.Blue1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: MyTheme.Blue1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: 'Full name',
                              ),
                            ),
                          ),
                        ),

                        //  mobile
                        StreamBuilder(
                          stream: bloc.Mob,
                          builder: (context, AsyncSnapshot snapshot) => Card(
                            elevation: 0,
                            margin: const EdgeInsets.only(bottom: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextFormField(
                              controller: mobController,
                              validator: (String text) {
                                if (text.isEmpty || text.length >= 15) {
                                  return "Please enter mobile number";
                                }
                              },
                              onChanged: (value) => bloc.changeMob,
                              cursorColor: MyTheme.Blue1,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              keyboardType: TextInputType.number,
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
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: MyTheme.Blue1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: MyTheme.Blue1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: 'Mobile number',
                              ),
                            ),
                          ),
                        ),

                        //  email
                        StreamBuilder(
                          stream: bloc.signupEmail,
                          builder: (context, AsyncSnapshot snapshot) => Card(
                            elevation: 0,
                            margin: const EdgeInsets.only(bottom: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextFormField(
                              controller: emailController,
                              validator: (String text) {
                                if (text.isEmpty || text.length >= 15) {
                                  return "Please enter email";
                                }
                              },
                              onChanged: (value) => bloc.changeSemail,
                              cursorColor: MyTheme.Blue1,
                              keyboardType: TextInputType.emailAddress,
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
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: MyTheme.Blue1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: MyTheme.Blue1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                hintText: 'Email',
                              ),
                            ),
                          ),
                        ),

                        //  password
                        StreamBuilder(
                          stream: bloc.signupPswd,
                          builder: (context, AsyncSnapshot snapshot) => Card(
                            elevation: 0,
                            margin: const EdgeInsets.only(bottom: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextFormField(
                              controller: pswdController,
                              validator: (String text) {
                                if (text.isEmpty || text.length >= 15) {
                                  return "Please enter password";
                                }
                              },
                              onChanged: (value) => bloc.changeSpswd,
                              cursorColor: MyTheme.Blue1,
                              obscureText: _isObscure2,
                              keyboardType: TextInputType.visiblePassword,
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
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: MyTheme.Blue1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: MyTheme.Blue1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
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
                        ),

                        StreamBuilder(
                          stream: bloc.Name,
                          builder: (context, AsyncSnapshot snapshot) => Card(
                            elevation: 0,
                            margin: const EdgeInsets.only(bottom: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextFormField(
                              controller: confirm_pswdController,
                              validator: (String text) {
                                if (text.isEmpty || text.length >= 15) {
                                  return "Please enter password";
                                }
                              },
                              onChanged: (value) => bloc.changeConfirmpswd,
                              cursorColor: MyTheme.Blue1,
                              obscureText: _isObscure2,
                              keyboardType: TextInputType.visiblePassword,
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
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: MyTheme.Blue1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: MyTheme.Blue1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
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
                        ),

                        //  sign up btn
                        Container(
                          height: 50,
                          width: 170,
                          // margin: const EdgeInsets.only(top: 150),
                          child: Card(
                            color: MyTheme.Blue1,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              // side: BorderSide(color: MyTheme.Blue3),
                            ),
                            child: MaterialButton(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 0),
                              elevation: 5,
                              onPressed: () async {
                                // if (formKeys.currentState.validate()) {
                                //   formKeys.currentState.save();
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                        return Homepg();
                                      }));
                                // }
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

                //  login
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text(
                    'Already have an account',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 170,
                  margin: const EdgeInsets.only(top: 5),
                  child: Card(
                    color: MyTheme.Blue1,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      // side: BorderSide(color: MyTheme.Blue3),
                    ),
                    child: MaterialButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      elevation: 5,
                      onPressed: () {
                        Navigator.pushReplacement(context,
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
      ),
      onWillPop: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => Loginpg())),
    );
  }
}
