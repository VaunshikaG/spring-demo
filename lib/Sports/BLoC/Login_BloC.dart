import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:sports/Sports/BLoC/Validators.dart';

class LoginBLoC with Validators{
  //  stream controllers
  final _lEmail = BehaviorSubject<String>();
  final _lPswd = BehaviorSubject<String>();

  //  getters
  Stream<String> get loginEmail => _lEmail.stream.transform(emailValidator);
  Stream<String> get loginPswd => _lPswd.stream.transform(loginPswdValidator);

  Stream<bool> get isValid => Rx.combineLatest2(loginEmail, loginPswd, (a, b) => true);


  // setters
  Function(String) get changeLemail => _lEmail.sink.add;
  Function(String) get changeLpswd => _lPswd.sink.add;

  void submit() {
    print(_lEmail.value);
    print(_lPswd.value);
  }

  void dispose() {
    _lEmail.close();
    _lPswd.close();
  }
}