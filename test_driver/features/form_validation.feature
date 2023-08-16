Feature: Form Validation

    Validate all form fields

    Scenario: #1 Validate when form is empty
        Given All form fields are empty
        When  I click on submit button
        Then It should show proper error message

    Scenario: #2 Validate  form  when email field is empty
        Given  email field is  empty
        Then I enter the email as "example@gmail.com"
        When  I click on submit button
        Then It should show proper error message for password field

    Scenario: #3 Validate  form  when password field is empty
        Given  password field is  empty
        Then  I enter the password as "123456"
        When  I click on submit button
        Then It should submit the form and navigate to home screen