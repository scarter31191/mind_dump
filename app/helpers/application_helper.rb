module ApplicationHelper

    def current_user
        @current_user ||= User.find_by_id(session[:user_id])
      end

    # def nav_links
    #     if login
    #         render partial: "partials/log_in_links"
    #     else
    #         render partial: "partials/logged_out_links"
    #     end
    # end
end
