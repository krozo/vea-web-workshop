Given(/^I am on Appimation signup page$/) do
    @tests.signup_tests.load_signup_page
end

When(/^I submit signup details$/) do
    @tests.signup_tests.submit_signup_details
end

When(/^I submit signup details without again password$/) do
    @tests.signup_tests.submit_signup_details_no_again_password
end

# Exercise Nr.4
# Given(/^I am on Appimation signup page$/) do
    
# end

# When(/^I submit signup details without passwords$/) do
    
# end

# Then(/^Im not signed up$/) do
    
# end


# Exercise Nr.5
# When(/^I submit signup details without email$/) do
    
# end

# Then(/^Im not signed up$/) do
    
# end


