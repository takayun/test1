class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.search(params[:id]).order("created_at DESC")
  end
end
