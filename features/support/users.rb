require 'date'
module Users

  def Users.signin_user
    @signin_user ||= User.new(email: 'gornist@inbox.lv', password: 'inbox_admin')
    @signin_user
  end

  def Users.signin_user_without_password
    @signin_user_without_password ||= User.new(email: 'gornist@inbox.lv', password: '')
    @signin_user_without_password
  end

  def Users.signin_user_without_email
    @signin_user_without_email ||= User.new(email: '', password: 'inbox_admin')
    @signin_user_without_email
  end

  def Users.signup_user
    @signup_user ||= User.new(email: 'test@test.com', password: 'passworddemo')
    @signup_user
  end

  def Users.signup_user_no_again_password
    @signup_user_no_again_password ||= User.new(email: 'test@test.com', password: 'passworddemo', password_again: '')
    @signup_user_no_again_password
  end
end

class User
  attr_reader :email, :password, :password_again, :project_name
  def initialize(email: nil, password: nil, password_again: nil, project_name: 'UIauto' + DateTime.now.strftime('%Q'))
    @email = email
    @password = password
    # p
    if password_again.nil?
      # p 'if'
      @password_again = password
    else
      # p 'else'
      @password_again = password_again
    end
    @project_name = project_name
  end

  # def initialize(email: 'default', password: nil)
  #   @email = email
  #   @password = password
  #   if password_again.nil?
  #     @password_again = password
  #   else
  #     @password = password
  #   end
  # end
end

