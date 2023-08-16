import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../../pages/login_page_model.dart';

class EmptyPasswordSteps extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    LoginPageModel pageModel = LoginPageModel(driver: world.driver!);

    final passwordText = await pageModel.getPasswordValue();

    expectMatch(passwordText, "");
  }

  @override
  Pattern get pattern => RegExp(r"password field is  empty");
}
