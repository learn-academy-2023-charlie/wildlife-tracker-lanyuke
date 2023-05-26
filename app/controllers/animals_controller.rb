class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    render json: @animals
  end

  def show
    @animals = Animal.find(params[:id])
    render json: @animals
  end

  def create
    @animals = Animal.create(animal_params)
    if @animals.valid?
      render json: @animals
    else
      render json: @animals.errors
    end
  end

  def edit
    @animals = Animal.find(params[:id])
  end

  def update
    @animals = Animal.find(params[:id])
    @animals.update(animal_params)
    if @animals.valid?
      render json: @animals
    else
      render json: @animals.errors
    end
  end

  def destroy
    @animals = Animal.find(params[:id])
    if @animals.destroy
      render json: @animals
    else
      render json: @animals.errors
    end
  end

  private

  def animal_params
      params.require(:animal).permit(:common_name, :scientific_binomial)
  end


end
