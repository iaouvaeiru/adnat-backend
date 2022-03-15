class PasswordResetsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email_address: params[:email_address])

        if @user.preset?
            PasswordMailer.with(user: @user).reset.deliver_later
        else
        end
        notice: "Email with instructions to reset password sent"
    end
end