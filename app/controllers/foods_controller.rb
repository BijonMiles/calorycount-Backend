class FoodsController < ApplicationController

  def index
    @foods = Food.all

    render json: @foods
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.create(strong_params)

    render json: @food
  end

  def show
    
    @food = Food.find(params[:id])
    render json: @food
  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def strong_params
    params.require(:food).permit(:food_name, :day_id, :calory, :meal)
  end
end
