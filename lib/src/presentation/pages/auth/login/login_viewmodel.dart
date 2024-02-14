// ignore_for_file: avoid_print
//-TODO: provider is other name
import 'package:flutter/material.dart';
import 'package:clean_code/src/presentation/utils/validation_item.dart';
import 'package:clean_code/src/presentation/pages/auth/login/login_state.dart';

class LoginViewModel extends ChangeNotifier {
  LoginState _state = LoginState();

  //GETTERS
  LoginState get state => _state;

  //SETTERS
  bool isValid() {
    if (_state.email.value.isEmpty && _state.password.value.isEmpty) {
      return false;
    }
    return true;
  }

  void changeEmail(String value) {
    if (value.length >= 3) {
      _state = _state.copyWith(email: ValidationItem(value: value));
    } else {
      _state = _state.copyWith(
          email: const ValidationItem(error: 'Min length is 3'));
    }
    notifyListeners();
  }

  void changePassword(String value) {
    if (value.length >= 6) {
      _state = _state.copyWith(password: ValidationItem(value: value));
    } else {
      _state = _state.copyWith(
          password: const ValidationItem(error: 'Min length is 6'));
    }
    notifyListeners();
  }

  void login() {
    print('Email: ${_state.email.value}');
    print('Password: ${_state.password.value}');
  }
}
