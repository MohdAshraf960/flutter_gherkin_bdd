

const wdio = require('webdriverio');
const find = require('appium-flutter-finder');




export default class LoginPageModel {

    emailField = find.byValueKey('emailField');
    passwordField = find.byValueKey('passwordField');



    static async getEmailValue() {
        const driver = await wdio.remote(opts);
        return driver.getElementText(this.emailField);
    }

}