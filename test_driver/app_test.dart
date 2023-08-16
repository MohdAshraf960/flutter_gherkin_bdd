import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import 'steps/steps.dart';

Future<void> main(List<String> args) {
  if (args.isEmpty) {
    log('please pass in the uri');
    exit(1);
  }

  final config = FlutterTestConfiguration()
    ..features = [RegExp('features/*.*.feature')]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ] // you can include the "StdoutReporter()" without the message level parameter for verbose log information
    ..stepDefinitions = [
      InitialLogin(),
      SubmitInitial(),
      ErrorMessageSteps(),
      EmptyEmailSteps(),
      EnterEmailSteps(),
      EmptyPasswordSteps(),
      EnterPasswordSteps(),
      SubmitSteps(),
      InitialStateHomePage()
    ]
    ..restartAppBetweenScenarios = false
    ..targetAppWorkingDirectory = '../'
    ..runningAppProtocolEndpointUri = args[0]
    ..targetAppPath = "test_driver/app.dart";

//   ..tagExpression = "@smoke" // uncomment to see an example of running scenarios based on tag expressions
  // set to false if debugging to exit cleanly
  return GherkinRunner().execute(config);
}
