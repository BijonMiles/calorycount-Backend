class DaysController < ApplicationController

  def index
    @days = Day.all

    render json: @days
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.create(strong_params)

    render json: @day
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
    params.require(:day).permit(:total_calory, :breakfast, :lunch, :dinner, :date)
  end
end
