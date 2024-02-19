import 'package:clean_code/src/presentation/utils/validation_item.dart';

class RegisterState {
  ValidationItem userName;
  ValidationItem email;
  ValidationItem password;
  ValidationItem confirmPassword;
  RegisterState({
    this.userName = const ValidationItem(),
    this.email = const ValidationItem(),
    this.password = const ValidationItem(),
    this.confirmPassword = const ValidationItem(),
  });

  bool isValid() {
    if (userName.value.isEmpty ||
        userName.error.isEmpty ||
        email.value.isEmpty ||
        email.error.isEmpty ||
        password.value.isEmpty ||
        password.error.isEmpty ||
        confirmPassword.value.isEmpty ||
        confirmPassword.error.isEmpty ||
        (password.value != confirmPassword.value)) {
      return false;
    }
    return true;
  }

  RegisterState copyWith({
    ValidationItem? userName,
    ValidationItem? email,
    ValidationItem? password,
    ValidationItem? confirmPassword,
  }) =>
      RegisterState(
        userName: userName ?? this.userName,
        email: email ?? this.email,
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
      );
}
