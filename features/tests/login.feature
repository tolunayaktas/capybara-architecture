Feature: Login Page Features

  Scenario: Register User
    Given Visit URL
    When Navigate to Login Page
    When Verify 'New User Signup!' is visible
    When Fill Name Input of SignUp: "Tolunay Aktas"
    When Fill Email Input of SignUp: "tolunayaktas+1023@gmail.com"
    When Click the SignUp Button
    When Verify that 'ENTER ACCOUNT INFORMATION' is visible
    When Fill details: Title, Password:"123456", Date of birth
    When Select checkbox 'Sign up for our newsletter!'
    When Select checkbox 'Receive special offers from our partners!'
    When Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    When Click 'Create Account button'
    When Verify that 'ACCOUNT CREATED!' is visible
    When Click 'Continue' button
    When Verify that 'Logged in as username' is visible
    When Click 'Delete Account' button
    When Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button



