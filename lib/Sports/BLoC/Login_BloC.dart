import 'dart:async';

import 'package:rxdart/rxdart.dart';

class LoginBLoC {
  //  stream controllers
  final _lEmail = BehaviorSubject<String>();
  final _lPswd = BehaviorSubject<String>();

  //  getters
  Stream<String> get loginEmail => _lEmail.stream;
  Stream<String> get loginPswd => _lPswd.stream;

  // setters
  Function(String) get changeLemail => _lEmail.sink.add;
  Function(String) get changeLpswd => _lPswd.sink.add;

  //  transformers for validtion


  void dispose() {
    _lEmail.close();
    _lPswd.close();
  }
}