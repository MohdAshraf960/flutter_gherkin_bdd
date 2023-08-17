# Setting Up Appium for Flutter Driver with BDD

In order to automate Flutter app testing using Appium with a Behavior-Driven Development (BDD) approach, follow the steps below. This guide assumes you're using Node.js version 18.16.0.

## Installation

1. Install Appium globally with version 2.0.0-beta.46:
   ```
   npm install -g appium@2.0.0-beta.46
   ```

2. Install the necessary drivers:
   - XCUITest for iOS:
     ```
     appium driver install xcuitest
     ```

   - UiAutomator2 for Android:
     ```
     appium driver install uiautomator2
     ```

   - Appium Flutter Driver:
     ```
     appium driver install --source=npm appium-flutter-driver
     ```

3. Install Appium Doctor globally to check your Appium setup:
   ```
   npm install appium-doctor -g
   ```

## Grant Permissions to Current User

Make sure to give permission to the current user for the necessary directories:
```
sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
```

## Prerequisites

Before proceeding, ensure that your Flutter app's APK is built in profile or debug mode. Additionally, add the following code inside the `main` function of your app just before the `runApp` method:
```dart
import 'package:flutter_driver/driver_extension.dart';

void main() {
  // Enables Flutter Driver extension.
  enableFlutterDriverExtension();

  runApp(MyApp());
}
```

