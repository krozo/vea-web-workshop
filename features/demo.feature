Feature: Demo Feature

    # Scenario: Open SignUp Page
    #     Given I am on Appimation sign up page
    #     When I submit signup details

    # Scenario: I sumbit signup without entering password again
    #     Given I am on Appimation sign up page
    #     When I submit signup details without again password



    Scenario - Login User
        Given I am on Appimation login page
        When I submit login details
        Then I see project page