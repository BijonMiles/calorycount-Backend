class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all

    render json: @schedules
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.create(strong_params)

    render json: @schedule
  end

  def show
    @schedule = Schedule.find(params[:id])
    render json: @schedule
  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def strong_params
    params.require(:schedule).permit(:user_id, :day_id)
  end
end
