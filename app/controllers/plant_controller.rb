class PlantsController < ApplicationController
    
    def index
        plant = plant.all 
        render json: plant
    end

    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end