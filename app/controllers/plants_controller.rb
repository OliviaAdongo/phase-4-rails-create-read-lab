class PlantsController < ApplicationController
    def index
       plants = Plant.all 
       render json: plants
    end
    def show
        trees = Plant.find_by(id: params[:id])
        render json: trees
        
    end
    def create
        mango = Plant.create(poppy)
        render json: mango, status: :created
    end
    private
    def poppy
        params.permit(:name, :image, :price)
        
    end
end
