class OrganisationsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_error
    def index 
        organisations = Organisation.all
        render json: organisations
    end

    def update
        organisation = Organisation.find_by(id: params[:id])
        organisation.update(:name => params[:name], :hourly_rate => params[:hourly_rate])
        render json: organisation, status: 200
    end

    def create
        organisation = Organisation.create!(organisation_params)
        render json: organisation, status: 201
        user = User.find_by(id: params[:user_id])
        user.update(:organisation_id => organisation.id)
    end

    private

    def organisation_params
        params.permit(:name, :hourly_rate)
    end

    def render_error(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
