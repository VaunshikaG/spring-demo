//  transformers for validtion
import 'dart:async';

mixin Validators {

  //  email validator
  var emailValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.isEmpty || email.length >= 20) {
        return sink.addError("Please enter email");
      } else if (email.length >= 20) {
        return sink.addError("Email length should be less than 20 characters");
      } else if (email.length >= 20) {
        return sink.addError("Email length should be less than 20 characters");
      }
    },
  );
}