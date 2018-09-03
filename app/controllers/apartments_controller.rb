class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)
    if @apartment.save
      redirect_to apartments_path
    else
      render 'new'
    end
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.find(params[:id])
    if @apartment.update(apartment_params)
      redirect_to apartments_path
    else
      render 'edit'
    end
  end

  def destroy
    @apartment.destroy
     redirect_to apartments_path
  end

  private
  def apartment_params
       params.require(:apartment).permit(:name, :rent, :adress, :year, :info, :route1, :station1, :walk, :routes2 ,:station2 ,:walk2)
  end

  def set_apartment
      @apartment = Apartment.find(params[:id])
  end

end
