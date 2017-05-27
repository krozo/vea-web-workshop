class Tests
  def initialize(pages)
    @pages = pages
  end 
  
  def signup_tests
    @signup_tests ||= SignupTest.new(@pages)
    @signup_tests
  end

  def signin_tests
    @signin_tests ||= SigninTest.new(@pages)
    @signin_tests
  end
end