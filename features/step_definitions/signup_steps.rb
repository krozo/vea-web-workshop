Given(/^I am on Appimation signup page$/) do
    @tests.signup_tests.load_signup_page
end

# When(/^I submit signup details$/) do
#     @tests.signup_tests.submit_signup_details
# end

# When(/^I submit signup details without again password$/) do
#     @tests.signup_tests.submit_signup_details_no_again_password
# end

# Exercise Nr.4
When(/^I submit signup details without passwords$/) do
    @tests.signup_tests.submit_signup_details_without_password
end

# Exercise Nr.5
When(/^I submit signup details without email$/) do
    @tests.signup_tests.submit_signup_details_without_email
end

# Exercise Nr.4 and Nr.5
Then(/^Im not signed up$/) do
    @tests.signup_tests.signup_test_details
end


