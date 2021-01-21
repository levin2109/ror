class CarsController < ApplicationController
  def index
    @cars = Car.all.order("created_at DESC")
  end
  def show
    @car = Car.find(params[:id])
  end
  def new
    @car = Car.new
  end
  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to @car
    else
      render 'new'
    end
  end
  def edit
    @car = Car.find(params[:id])
  end
  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to @car
    else
      render 'edit'
    end
  end
  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to root_path
  end
  def car_params
    params.require(:car).permit(:producer_id, :lh_fuel, :lh_year, :lh_model, :lh_usage)
  end
end
