class PrototypesController < ApplicationController
  before_action :set_prototype, only: [:edit, :show, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

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
  end

  def edit
  end

  def update
    if @prototype.update(prototype_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def destroy
    if @prototype.destroy
      redirect_to prototypes_path
    end
  end

  private

  def prototype_params
    params.require(:prototype).permit(:price, :car_maker, :car_model, :car_grade, :body_color, :vi_number, :year, :mileage, :drive_system, :transmission, :inspection, :comment, :image).merge(user_id: current_user.id)
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def correct_user
    if current_user.id != @prototype.user_id
      redirect_to root_path
    end
  end

end
