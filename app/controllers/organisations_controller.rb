class OrganisationsController < ApplicationController
    def index 
        organisations = Organisation.all
        render json: organisations
    end

    def update
        organisation = Organisation.find_by(id: params[:id])
        organisation.update(:name => params[:name], :hourly_rate => params[:hourly_rate])
        render json: organisation, status: 200
    end
end
