Feature: Home Page Feature

  Scenario: Check if you are in the site
    Given Visit URL
    Then Check the title of the page. It should be: "Automation Exercise"
