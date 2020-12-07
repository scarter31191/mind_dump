class SessionsController < ApplicationController

    def login
        # @user = User.new
    end

    def logged_in
        # byebug
        @user = User.find_by(email: params[:email])
        # byebug
        if @user && @user.authenticate(params[:password])
            #logging in
            session[:user_id] = @user.id
            # byebug
            redirect_to user_path(@user) #show page
        else
            render :new
        end
    end

    def logout
        session.clear
        redirect_to login_path
    end

end
