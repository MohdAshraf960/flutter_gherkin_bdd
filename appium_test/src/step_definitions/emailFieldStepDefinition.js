const { When, Given, Then } = require("@cucumber/cucumber");
const { default: LoginPageModel } = require("../pages/loginPageModel");
const assert = require("assert");

Given(/^email field is  empty$/, async () => {
  const emailValue = await LoginPageModel.getEmailValue();
  assert.strictEqual(emailValue, "");
});
