class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_error
    before_action :authorized, only: [:me]
    def index
        users = User.all
        render json: users
    end

    def me
        token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: token}
    end

    def create
        user = User.create!(user_params)
        render json: user, status: 201
    end

    def update
        user = User.find_by(id: params[:id])
        organisation = Organisation.find_by(id: params[:organisation_id])
        user.update(:organisation_id => params[:organisation_id])
        render json: organisation, status: 200
    end

    def leave
        user = User.find_by(id: params[:id])
        user.update(:organisation_id => nil)
        shifts = Shift.where(:user_id => params[:id]).to_a
        shifts.map{|shift| shift.destroy}
        render json: user, status:200
    end

    def edit
        user = User.find_by(id: params[:id])
        user.update!(user_params)
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
