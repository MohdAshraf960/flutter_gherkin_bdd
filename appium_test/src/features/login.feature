 Feature: Login
 
     All possible validation
 
  Scenario: #2 Validate  form  when email field is empty
        Given  email field is  empty
        Then I enter the email as "example@gmail.com"
        When  I click on submit button
        Then It should show proper error message for password field