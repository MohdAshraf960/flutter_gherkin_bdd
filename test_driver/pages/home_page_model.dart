import 'package:flutter_driver/flutter_driver.dart';

class HomePageModel {
  final FlutterDriver driver;

  final textFinder = find.text("Home Page");
  HomePageModel({required this.driver});

  Future<String> getText() async => driver.getText(textFinder);
}
