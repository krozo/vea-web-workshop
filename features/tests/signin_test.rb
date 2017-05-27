class SigninTest
    def initialize(pages)
        @pages = pages
    end

    # Exercise Nr.1
    def load_signin_page
        @pages.page_home.load
        @pages.page_home.visible?
        @pages.page_home.open_signin
    end    

    def enter_signin_details(user)
        @pages.page_home.signin_enter_email user.email
        @pages.page_home.signin_enter_password user.password
    end   

    def submit_signin_details
        user = Users.signin_user
        enter_signin_details(user)
        # @pages.page_home.signin_close_button
    end   

    def signin_enter_button
        @pages.page_home.signin_login_button
    end

    def load_project_page?
        @pages.page_home.project_page_visible?
    end

    def signout_button
        @pages.page_home.signout_button
    end












end