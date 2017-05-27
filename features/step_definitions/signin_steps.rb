# Exercise Nr.1
Given(/^I am on Appimation login page$/) do
    @tests.signin_tests.load_signin_page
end

When(/^I submit login details$/) do
    @tests.signin_tests.submit_signin_details
    @tests.signin_tests.login_test_details
end

Then(/^I see project page$/) do
    @tests.signin_tests.load_project_page?
    @tests.signin_tests.signout_button
end

# Exercise Nr.2
When(/^I submit login details without password$/) do
    @tests.signin_tests.submit_signin_details_without_password
end

# Exercise Nr.3
When(/^I submit login details without email$/) do
    @tests.signin_tests.submit_signin_details_without_email
end

# Exercise Nr.2 and Nr.3
Then(/^Im not loged in$/) do
    @tests.signin_tests.login_test_details
end






