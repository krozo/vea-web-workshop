# Exercise Nr.1
Given(/^I am on Appimation login page$/) do
    @tests.signin_tests.load_signin_page
end

When(/^I submit login details$/) do
    @tests.signin_tests.submit_signin_details
    @tests.signin_tests.signin_enter_button
end

Then(/^I see project page$/) do
    
end

# Exercise Nr.2