require 'date'
module Users

  def Users.signin_user
    @signin_user ||= User.new(email: 'gornist@inbox.lv', password: 'inbox_admin')
    @signin_user
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
  def initialize(email: 'default', password:, password_again: nil, project_name: 'UIauto' + DateTime.now.strftime('%Q'))
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
end

