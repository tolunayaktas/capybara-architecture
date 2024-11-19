login_page = LoginPage.new

When(/^Navigate to Login Page$/) do
  login_page.goToLoginPage
end

When(/^Verify 'New User Signup!' is visible$/) do
  login_page.verifyNewUserSignup
end

When(/^Fill Name Input of SignUp: "([^"]*)"$/) do |name|
  login_page.fillNameInputofSignUp(name)
end


When(/^Click the SignUp Button$/) do
  login_page.clickSignUp
end

When(/^Verify that 'ENTER ACCOUNT INFORMATION' is visible$/) do
  login_page.verifyEnterInformationTitle
end

When(/^Fill Email Input of SignUp: "([^"]*)"$/) do |email|
  login_page.fillEmailInputofSignUp(email)
end

When(/^Fill details: Title, Password:"([^"]*)", Date of birth$/) do |password|
  login_page.fillFirstDetails(password)
end

When(/^Select checkbox 'Sign up for our newsletter!'$/) do
  login_page.selectNewsletterCheckbox
end

When(/^Select checkbox 'Receive special offers from our partners!'$/) do
  login_page.selectOffersCheckbox
end

When(/^Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number$/) do
  login_page.fillSecondaryDetails
end

When(/^Click 'Create Account button'$/) do
  login_page.clickCreateAccount
end

When(/^Verify that 'ACCOUNT CREATED!' is visible$/) do
  login_page.verifyAccountCreated
end

When(/^Click 'Continue' button$/) do
  login_page.clickContinueButton
end

When(/^Verify that 'Logged in as username' is visible$/) do
  login_page.verifyLoggedIn
end

When(/^Click 'Delete Account' button$/) do
  login_page.clickDeleteAccount
end

When(/^Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button$/) do
  login_page.verifyDeletedAndContinue
end