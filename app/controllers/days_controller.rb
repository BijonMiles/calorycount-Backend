class DaysController < ApplicationController

  def index
    @days = Day.all

    render json: @days
  end

  def new
    @day = Day.new
  end

  def create
    byebug
    # create a new instance of day

    # create all of the Food that belongs to that day
    # iterate over breakfast array, lunch array, dinner array
    # create  new instances of a food_item - have a category and belong to a day
    # food name, calories, day_id, meal: 'breakfast'
    @day = Day.create(strong_params)
    # byebug
    params[:breakfast].each do |breakfast_item|
      # byebug
       breakfast_item['food_name']
       @food = Food.create( food_name: breakfast_item['food_name'], day_id: @day['id'], calory: breakfast_item['nf_calories'], meal: "breakfast")
    end
    # byebug
    params[:lunch].each do |breakfast_item|
      # byebug
       breakfast_item['food_name']
       @food = Food.create( food_name: breakfast_item['food_name'], day_id: @day['id'], calory: breakfast_item['nf_calories'], meal: "lunch")
    end
    # byebug

    params[:dinner].each do |breakfast_item|
      # byebug
       breakfast_item['food_name']
       @food = Food.create( food_name: breakfast_item['food_name'], day_id: @day['id'], calory: breakfast_item['nf_calories'], meal: "dinner")
    end
    # byebug

    if @day.valid?
      # byebug
      # render json: @day.format_json
      render json: @day
    else
      render json: {error: 'WRONG'}, status: 422
    end


  end

  def show
    @day = Day.find(params[:id])
    render json: @day
  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def strong_params
    params.permit(:total_calory, :date)
    # params.require(:day).permit(:total_calory, :breakfast, :lunch, :dinner, :date)
  end
end
