class PlantsController < ApplicationController
  wrap_parameters format:[]

  def index 
    render json: Plant.all
  end 

  def show
    plant = Plant.find(params[:id])
    render json: plant
  end

  def create
    plant = Plant.create(plants_params)
    render json: plant
  end 

  #helper function 
  def plants_params 
    params.permit(:name, :image, :price)
  end 
end
