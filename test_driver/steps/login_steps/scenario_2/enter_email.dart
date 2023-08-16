import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../../pages/login_page_model.dart';

class EnterEmailSteps extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    LoginPageModel loginPageModel = LoginPageModel(driver: world.driver!);

    await FlutterDriverUtils.enterText(
        world.driver, loginPageModel.emailField, input1);
  }

  @override
  Pattern get pattern => RegExp(r"I enter the email as {string}");
}
