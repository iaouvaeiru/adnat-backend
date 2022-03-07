class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_error
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create!(user_params)
        render json: user, status: 201
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(:organisation_id => params[:organisation_id])
        render json: user, status: 200
    end

    def login
        user = User.find_by(email_address: params[:email_address])
        if user && user.authenticate(params[:password])
            something = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: something}
        else
            render json: {error: 'Incorrect credentials, please try again'}
        end
    end

    private
    def user_params
        params.permit(:name, :email_address, :password)
    end

    def render_error(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
