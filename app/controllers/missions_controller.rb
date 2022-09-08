class MissionsController < ApplicationController

    # POST /missions
    def create
        mission = Mission.create!(mission_params)
        render json: mission, status: :created
    end

    private

    def mission_params
        params.permit(:name, :scientist_id, :planet_id)
    end

end
