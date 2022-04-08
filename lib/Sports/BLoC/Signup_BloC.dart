import 'package:rxdart/rxdart.dart';

class SignupBLoC {
  //  stream controllers
  final _Name = BehaviorSubject<String>();
  final _Mob = BehaviorSubject<String>();
  final _sEmail = BehaviorSubject<String>();
  final _sPswd = BehaviorSubject<String>();
  final _ConfirmPswd = BehaviorSubject<String>();

  //  getters
  Stream<String> get Name => _Name.stream;
  Stream<String> get Mob => _Mob.stream;
  Stream<String> get signupEmail => _sEmail.stream;
  Stream<String> get signupPswd => _sPswd.stream;
  Stream<String> get signupConfirmPswd => _ConfirmPswd.stream;

  // setters
  Function(String) get changeName => _Name.sink.add;
  Function(String) get changeMob => _Mob.sink.add;
  Function(String) get changeSemail => _sEmail.sink.add;
  Function(String) get changeSpswd => _sPswd.sink.add;
  Function(String) get changeConfirmpswd => _ConfirmPswd.sink.add;

  void dispose() {
    _Name.close();
    _Mob.close();
    _sEmail.close();
    _sPswd.close();
    _ConfirmPswd.close();
  }
}