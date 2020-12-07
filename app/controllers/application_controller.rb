class ApplicationController < ActionController::Base

    include ApplicationHelper
    
    def home
        redirect_to login_path
    end
end
