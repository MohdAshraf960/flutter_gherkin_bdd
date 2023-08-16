import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../../pages/login_page_model.dart';

class SubmitSteps extends ThenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    LoginPageModel loginPageModel = LoginPageModel(driver: world.driver!);
    loginPageModel.submitForm();
  }

  @override
  Pattern get pattern =>
      RegExp(r"It should submit the form and navigate to home screen");
}
