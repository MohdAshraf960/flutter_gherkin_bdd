import 'package:flutter_driver/flutter_driver.dart';

class LoginPageModel {
  final FlutterDriver driver;

  final emailField = find.byValueKey("emailField");
  final passwordField = find.byValueKey("passwordField");
  final submitButton = find.byType('ElevatedButton');

  LoginPageModel({required this.driver});

  Future<String> getEmailValue() async {
    return driver.getText(emailField);
  }

  Future<String> getPasswordValue() async {
    return driver.getText(passwordField);
  }

  Future<void> submitForm() async {
    return driver.tap(submitButton);
  }
}
