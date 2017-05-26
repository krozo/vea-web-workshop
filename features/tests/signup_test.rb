class SignupTest
  def initialize(pages)
      @pages = pages
  end

  def load_signup_page
        # visit 'http://www.apimation.com'
    @pages.page_home.load
    @pages.page_home.visible?
        # find(:xpath, '//button[@id = "signup-b"]').click
    @pages.page_home.open_signup
  end

  def enter_signup_details(user) #(email, password, project_name)
            # find(:xpath, '//div[@id = "signup"]/descendant::input[@type = "email"]').send_keys 'test@test.com'
    @pages.page_home.signup_enter_email user.email
        # find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]').send_keys 'test'
        # find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]').send_keys 'test'
    @pages.page_home.signup_enter_password user.password
    @pages.page_home.signup_enter_password_again user.password_again
        # find(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]').send_keys 'Test Project Name'
    @pages.page_home.signup_enter_project_name user.project_name
        # find(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]').click
    # @pages.page_home.signup_close_button
  end

  def submit_signup_details
    user = Users.signup_user
    # enter_signup_details(user.email, user.password, user.project_name)
    enter_signup_details(user)
    @pages.page_home.signup_close_button
  end  

  def submit_signup_details_no_again_password
    user = Users.signup_user_no_again_password
    # enter_signup_details(user.email, user.password, user.project_name)
    enter_signup_details(user)
    @pages.page_home.signup_close_button
  end  
end
