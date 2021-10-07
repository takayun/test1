class PrototypesController < ApplicationController
  before_action :authenticate_user!

  def index
    @prototypes = Prototype.includes(:user).order("updated_at DESC")
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

  def show
    @prototype = Prototype.find(params[:id])
  end

  def destroy
    @prototype = Prototype.find(params[:id])
    if @prototype.destroy
      redirect_to prototypes_path
    end
  end

  private

  def prototype_params
    params.require(:prototype).permit(:price, :car_maker, :car_model, :car_grade, :body_color, :vi_number, :year, :mileage, :drive_system, :transmission, :inspection, :comment, :image).merge(user_id: current_user.id)
  end

end
