class HomePage < BasePage
    attr_accessor :button_start
    attr_accessor :signin_password_idx_tmp, :signin_email_idx_tmp
    attr_accessor :signup_password_idx_tmp, :signup_emailIdxTmp, :signup_emailTextTmp, :signup_passwordTextTmp
  def initialize
    @video_frame = Element.new(:xpath, '//div[@id = "video"]')
    @try_now_button = Element.new(:xpath, '//button[@id = "start_button"]')

    @signup_email = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@type = "email"]')
    @signup_password1 = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]')
    @signup_password2 = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]')
    @project_name = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]')

    @signup_close_button = Element.new(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]')

    # Exercises Nr.1-3
    @signin_button = Element.new(:xpath, '//button[@id = "login-b"]')
    @signin_email = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]')
    @signin_password = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@type = "password"]')
    @signin_log_in_button = Element.new(:xpath, '//div[@id = "login"]/descendant::button[@class = "button button-block innerButton"]')
    @signout_button = Element.new(:xpath, '//div[@id = "logoutButton"]')

    @signin_password_idx_tmp = 0
    @signin_email_idx_tmp = 0
    # Exercises Nr.4-5
    @signup_button = Element.new(:xpath, '//div[@id = "signup"]/descendant::button[@class = "button-form button-block-form innerButton"]')

    @signup_passwordIdxTmp = 0
    @signup_emailIdxTmp = 0
  end

  # 1................
  def open_signin
    @signin_button.click
  end  

  # Change test id number, its work in 2,3,4,5 exercises
  def change_idx(idx_param, word, parameter)
    if (word.to_s.empty? == true) then
        parameter = idx_param
    else
        parameter = 0
    end
  end

  def signin_enter_email(email)
    @signin_email.send_keys email
    # @signin_emailTextTmp = email
    # if (email.to_s.empty? == true) then
    #     @signin_email_idx_tmp = 2
    # else
    #     @signin_email_idx_tmp = 0
    # end
    @signin_email_idx_tmp = change_idx(2, email, @signin_email_idx_tmp)
  end  

  def signin_enter_password(password)
    @signin_password.send_keys password
    # @signin_passwordTextTmp = password
    # if (password.to_s.empty? == true) then
    #     @signin_password_idx_tmp = 1
    # else
    #     @signin_password_idx_tmp = 0
    # end
    @signin_password_idx_tmp = change_idx(1, password, @signin_password_idx_tmp)
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
  # def password_nil
  #   if (signin_passwordTextTmp.to_s.empty? == true) then
  #       @signin_passwordIdxTmp = 1
  #   else
  #       @signin_passwordIdxTmp = 0
  #   end
  # end
  # 3.............................
  # def email_nil
  #   if (signin_emailTextTmp.to_s.empty? == true) then
  #       @signin_emailIdxTmp = 2
  #   else
  #       @signin_emailIdxTmp = 0
  #   end
  # end
  # 2 and 3
  def incorrent_login_test
    # password_nil
    # email_nil
    if (signin_password_idx_tmp == 0) and (signin_email_idx_tmp == 0) then
      p 'Im loged in ||| Email and password is correct'
      signin_login_button
    elsif (signin_password_idx_tmp == 1) and (signin_email_idx_tmp == 0) then
      p 'Im not loged in ||| Password is empty'
    elsif (signin_email_idx_tmp == 2) and (signin_password_idx_tmp == 0) then
      p 'Im not loged in ||| Email is empty'
    end
  end


  def visible?
    @video_frame.visible?
    @try_now_button.visible?
  end

  # 4 - 5........................
  def open_signup
    @try_now_button.click
  end

  def signup_enter_email(email)
    @signup_email.send_keys email
    if (email.to_s.empty? == true) then
        @signup_emailIdxTmp = 2
    else
        @signup_emailIdxTmp = 0
    end
  end

  def signup_enter_password(password)
    @signup_password1.send_keys password
    if (password.to_s.empty? == true) then
        @signup_passwordIdxTmp = 1
    else
        @signup_passwordIdxTmp = 0
    end
  end

  def signup_enter_password_again(password)
    @signup_password2.send_keys password
  end

  def signup_enter_passwords(password)
    signup_enter_password password
    signup_enter_password_again password
  end

  def signup_enter_project_name(name)
    @project_name.send_keys name
  end

  def signup_register_button
    @signup_button.click
  end

  def load
    visit('/')
  end
end
