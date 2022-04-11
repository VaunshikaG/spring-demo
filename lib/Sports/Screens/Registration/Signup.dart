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
                  margin: const EdgeInsets.only(top: 110),
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    // border: Border.all(color: MyTheme.Blue1),
                  ),
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
                            onChanged: bloc.changeName,
                            cursorColor: MyTheme.Blue1,
                            keyboardType: TextInputType.name,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Full name',
                              errorText: snapshot.error,
                              errorStyle: TextStyle(fontWeight: FontWeight.bold),
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
                            onChanged: bloc.changeMob,
                            cursorColor: MyTheme.Blue1,
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Mobile number',
                              errorText: snapshot.error,
                              errorStyle: TextStyle(fontWeight: FontWeight.bold),
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
                            onChanged: bloc.changeSemail,
                            cursorColor: MyTheme.Blue1,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              errorText: snapshot.error,
                              errorStyle: TextStyle(fontWeight: FontWeight.bold),
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
                            onChanged: (value) => bloc.changeSpswd,
                            cursorColor: MyTheme.Blue1,
                            obscureText: _isObscure2,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              errorText: snapshot.error,
                              errorStyle: TextStyle(fontWeight: FontWeight.bold),
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
                        stream: bloc.signupConfirmPswd,
                        builder: (context, AsyncSnapshot snapshot) => Card(
                          elevation: 0,
                          margin: const EdgeInsets.only(bottom: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            controller: confirm_pswdController,
                            onChanged: bloc.changeConfirmpswd,
                            cursorColor: MyTheme.Blue1,
                            obscureText: _isObscure2,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              errorText: snapshot.error,
                              errorStyle: TextStyle(fontWeight: FontWeight.bold),
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
                      StreamBuilder(
                          stream: bloc.isValid,
                          builder: (context, AsyncSnapshot snapshot) => Container(
                            height: 50,
                            width: 170,
                            // margin: const EdgeInsets.only(top: 150),
                            child: Card(
                              color: snapshot.hasError || !snapshot.hasData ? Colors.grey.shade600 : MyTheme.Blue1,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                // side: BorderSide(color: MyTheme.Blue3),
                              ),
                              child: MaterialButton(
                                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                                elevation: 5,
                                onPressed: snapshot.hasError || !snapshot.hasData  ? null : () async {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                        return Homepg();
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
                      ),
                    ],
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
