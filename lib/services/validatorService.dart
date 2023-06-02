import 'dart:core';

import 'package:flutter/services.dart';

class ValidateService {
   String? emailValidator(String? value) {
   String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

 String? pwdValidator(String? value) {
    if (value!.length <8 ) {
      return ' Minimum 8 characters';
    } else {
      return null;
    }
  }


}