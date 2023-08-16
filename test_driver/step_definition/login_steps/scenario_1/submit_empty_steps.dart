import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../../pages/login_page_model.dart';

class SubmitInitial extends WhenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    LoginPageModel pageModel = LoginPageModel(driver: world.driver!);
    pageModel.submitForm();
  }

  @override
  Pattern get pattern => RegExp(r"I click on submit button");
}
