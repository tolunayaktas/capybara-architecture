class LoginPage

  def initialize
    @btn_loginPage_css = "a[href='/login']"
    @txt_newUser_css = "div[class='signup-form'] h2"
    @txt_enterInfo_xpt = "//b[normalize-space()='Enter Account Information']"
    @inp_nameSign_css = "input[placeholder='Name']"
    @inp_emailSign_css = "input[data-qa='signup-email']"
    @btn_signup_css = "button[data-qa='signup-button']"
    @chk_titleMr_css = "#id_gender1"
    @inp_passwordSign_css = "#password"
    @lst_days_css = "#days"
    @lst_months_css = "#months"
    @lst_years_css = "#years"
    @chk_newsletter_css = "#newsletter"
    @chk_offers_css = "#optin"
    @inp_firstNameSign_css = "#first_name"
    @inp_lastNameSign_css = "#last_name"
    @inp_companySign_css = "#company"
    @inp_addressSign_css = "#address1"
    @inp_countrySign_css = "#country"
    @inp_mobilenumberSign_css = "#mobile_number"
    @inp_stateSign_css = "#state"
    @inp_citySign_css = "#city"
    @inp_zipcodeSign_css = "#zipcode"
    @btn_createAccount_css = "button[data-qa='create-account']"
    @txt_accountCreated_xpt= "//b[normalize-space()='Account Created!']"
    @btn_continue_css = ".btn.btn-primary"
    @txt_loggedIn_css = "li:nth-child(10) a:nth-child(1)"
    @btn_deleteAccount_css = "a[href='/delete_account']"
    @txt_accountDeleted_css = "h2[class='title text-center'] b"
  end

  def goToLoginPage
    find(@btn_loginPage_css).click
  end

  def verifyNewUserSignup
    find(@txt_newUser_css)
  end

  def verifyEnterInformationTitle
    find(:xpath, @txt_enterInfo_xpt)
  end

  def fillNameInputofSignUp(name)
    find(@inp_nameSign_css).send_keys(name)
  end

  def fillEmailInputofSignUp(email)
    find(@inp_emailSign_css).send_keys(email)
  end

  def clickSignUp
    find(@btn_signup_css).click
  end

  def fillFirstDetails(password)
    find(@chk_titleMr_css).click
    find(@inp_passwordSign_css).send_keys(password)
    find(@lst_days_css).select('22')
    find(@lst_months_css).select('February')
    find(@lst_years_css).select('1999')
  end

  def selectNewsletterCheckbox
    find(@chk_newsletter_css)
  end

  def selectOffersCheckbox
    find(@chk_offers_css)
  end

  def fillSecondaryDetails
    find(@inp_firstNameSign_css).send_keys("Tolunay")
    find(@inp_lastNameSign_css).send_keys("Aktas")
    find(@inp_companySign_css).send_keys("Dunder Mifflin")
    find(@inp_addressSign_css).send_keys("Edirne")
    find(@inp_countrySign_css).select('Canada')
    find(@inp_citySign_css).send_keys("Toronto")
    find(@inp_stateSign_css).send_keys("Quebec")
    find(@inp_zipcodeSign_css).send_keys("22000")
    find(@inp_mobilenumberSign_css).send_keys("+905412991599")
  end

  def clickCreateAccount
    find(@btn_createAccount_css).click
  end

  def verifyAccountCreated
    find(:xpath, @txt_accountCreated_xpt)
  end

  def clickContinueButton
    find(@btn_continue_css).click
  end

  def verifyLoggedIn
    find(@txt_loggedIn_css)
  end

  def clickDeleteAccount
    find(@btn_deleteAccount_css).click
  end

  def verifyDeletedAndContinue
    find(@txt_accountDeleted_css)
    find(@btn_continue_css)
  end

end