import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../../pages/login_page_model.dart';

class EmptyEmailSteps extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    LoginPageModel pageModel = LoginPageModel(driver: world.driver!);

    final emailText = await pageModel.getEmailValue();

    expectMatch(emailText, "");
  }

  @override
  Pattern get pattern => RegExp(r"email field is  empty");
}
