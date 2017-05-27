class HomePage < BasePage
    attr_accessor :button_start, :passwordIdxTmp, :emailIdxTmp, :emailTextTmp, :passwordTextTmp
  def initialize
    @video_frame = Element.new(:xpath, '//div[@id = "video"]')
    @try_now_button = Element.new(:xpath, '//button[@id = "start_button"]')

    @signup_email = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@type = "email"]')
    @signup_password1 = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]')
    @signup_password2 = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]')
    @project_name = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]')

    @signup_close_button = Element.new(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]')

    # Exercise Nr.1
    @signin_button = Element.new(:xpath, '//button[@id = "login-b"]')
    @signin_email = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]')
    @signin_password = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@type = "password"]')
    @signin_log_in_button = Element.new(:xpath, '//div[@id = "login"]/descendant::button[@class = "button button-block innerButton"]')
    @signout_button = Element.new(:xpath, '//div[@id = "logoutButton"]')

    @passwordIdxTmp = 0
    @emailIdxTmp = 0
  end

  # 1................
  def open_signin
    @signin_button.click
  end  

  def signin_enter_email(email)
    @signin_email.send_keys email
    @emailTextTmp = email
  end  

  def signin_enter_password(password)
    @signin_password.send_keys password
    @passwordTextTmp = password
  end  

  def signin_login_button
    @signin_log_in_button.click
  end

  def project_page_visible?
    @signout_button.visible?
  end

  def signout_button
    @signout_button.click
  end

  # 2...........................
  def password_nil
    if (passwordTextTmp.to_s.empty? == true) then
        @passwordIdxTmp = 1
    else
        @passwordIdxTmp = 0
    end
  end
  # 3.............................
  def email_nil
    if (emailTextTmp.to_s.empty? == true) then
        @emailIdxTmp = 2
    else
        @emailIdxTmp = 0
    end
  end
  # 2 and 3
  def incorrent_login_test
    password_nil
    email_nil
    if (passwordIdxTmp == 0) and (emailIdxTmp == 0) then
      p 'Im loged in ||| Email and password is correct'
      signin_login_button
    elsif (passwordIdxTmp == 1) and (emailIdxTmp == 0) then
      p 'Im not loged in ||| Password is empty'
    elsif (emailIdxTmp == 2) and (passwordIdxTmp == 0) then
      p 'Im not loged in ||| Email is empty'
    end
  end


  def visible?
    @video_frame.visible?
    @try_now_button.visible?
  end

  # def open_signup
  #   @try_now_button.click
  # end

  # def signup_enter_email(email)
  #   @signup_email.send_keys email
  # end

  # def signup_enter_password(password)
  #   @signup_password1.send_keys password
  # end

  # def signup_enter_password_again(password)
  #   @signup_password2.send_keys password
  # end

  # def signup_enter_passwords(password)
  #   signup_enter_password password
  #   signup_enter_password_again password
  # end

  # def signup_enter_project_name(name)
  #   @project_name.send_keys name
  # end

  # def signup_close_button
  #   @signup_close_button.click
  # end

  def load
    visit('/')
  end
end
