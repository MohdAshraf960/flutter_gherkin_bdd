import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../../pages/login_page_model.dart';

class ErrorMessageSteps extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    LoginPageModel(driver: world.driver!);
  }

  @override
  Pattern get pattern => RegExp(r"It should show proper error message");
}
