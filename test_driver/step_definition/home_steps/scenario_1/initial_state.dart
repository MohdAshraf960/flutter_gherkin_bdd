import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../../../pages/home_page_model.dart';

class InitialStateHomePage extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String input1) async {
    HomePageModel homePageModel = HomePageModel(driver: world.driver!);

    final text = await homePageModel.getText();
    expectMatch(text, input1);
  }

  @override
  Pattern get pattern => RegExp(r"Should have text {string}");
}
