class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to prototypes_path
    else
      render :new
    end
  end

  private

  def prototype_params
    params.require(:prototype).permit(:price, :car_maker, :car_model, :car_grade, :body_color, :vi_number, :year, :mileage, :drive_system, :transmission, :inspection, :comment, :image)
  end

end
