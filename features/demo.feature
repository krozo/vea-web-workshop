Feature: Demo Feature

    # Scenario: Open SignUp Page
    #     Given I am on Appimation signup page
    #     When I submit signup details

    # Scenario: I sumbit signup without entering password again
    #     Given I am on Appimation signup page
    #     When I submit signup details without again password


    # Done
    Scenario: Login User
        Given I am on Appimation login page
        When I submit login details
        Then I see project page
    # Done
    Scenario: Login User without password
        Given I am on Appimation login page
        When I submit login details without password
        Then Im not loged in
    # Done
    Scenario: Login User without email
        Given I am on Appimation login page
        When I submit login details without email
        Then Im not loged in

    # Scenario: Signup User without passwords
    #     Given I am on Appimation signup page
    #     When I submit signup details without passwords
    #     # Then Im not signed up

    # Scenario: Signup User without email
    #     Given I am on Appimation signup page
    #     When I submit signup details without email
    #     Then Im not signed up