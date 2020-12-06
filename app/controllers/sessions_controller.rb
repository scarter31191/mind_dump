class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(email: params[:user][:email])

        if @user && @user.authenticate(password: params[:user][:password])
            #logging in
            sessions[:user_id] = @user.id
            redirect_to user_path(@user) #show page
        else
            render :new
        end
    end

end
