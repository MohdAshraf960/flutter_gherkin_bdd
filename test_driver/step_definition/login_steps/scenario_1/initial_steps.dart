import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../../pages/login_page_model.dart';

class InitialLogin extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    LoginPageModel pageModel = LoginPageModel(driver: world.driver!);

    final emailText = await pageModel.getEmailValue();
    final passwordText = await pageModel.getPasswordValue();

    expectMatch(emailText, "");
    expectMatch(passwordText, "");
  }

  @override
  Pattern get pattern => RegExp(r"All form fields are empty");
}
