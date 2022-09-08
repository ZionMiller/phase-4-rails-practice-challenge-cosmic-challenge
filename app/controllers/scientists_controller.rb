class ScientistsController < ApplicationController

    # GET /scientists
    def index
        render json: Scientist.all
    end

    # GET /scientists/:id
    def show
        scientist = find_scientist
        render json: scientist, serializer: ShowScientistSerializer, status: 200
        # no colon before serializer name
    end

    # POST /scientists
    def create
        scientist = Scientist.create!(scientist_params)
        render json: scientist, status: :created
    end

    # PATCH /scientists/:id
    def update
        scientist = find_scientist
        scientist.update!(scientist_params)
        render json: scientist, status: 200
    end

    # DELETE /scientists/:id
    def destroy
        scientist = find_scientist
        head :no_content, status: :no_content
    end

    private

    def scientist_params
        params.permit(:name, :field_of_study, :avatar)
    end

    def find_scientist
        Scientist.find(params[:id])
    end


end
