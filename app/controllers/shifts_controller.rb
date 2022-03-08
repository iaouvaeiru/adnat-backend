class ShiftsController < ApplicationController
    def index
        shifts = Shift.all
        render json: shifts
    end

    def create
        shift = Shift.create!(shift_params)
        render json: shift, status: 201
    end

    private

    def shift_params
        params.permit(:start, :finish, :user_id, :break_length)
    end
end
