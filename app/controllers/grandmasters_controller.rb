class GrandmastersController < ApplicationController
  # before_action :set_user, only: %i[ show ]

  def index
    @grandmasters = Grandmaster.all
  end

  def show
    @grandmaster = Grandmaster.find(params[:id])
  end

  def new
    @grandmaster = Grandmaster.new
  end

  def create
    @grandmaster = Grandmaster.new(grandmaster_params)
    @grandmaster.save
    if @grandmaster.save
      redirect_to grandmaster_path(@grandmaster)
    else
      render :new
    end
  end

  def destroy
    @destroy = Grandmaster.find(params[:id])
    @destroy.destroy
    redirect_to grandmaster_path(@grandmaster)
  end

  private

  # def set_user
  #   @user = User.find(params[:id])
  # end

  def grandmaster_params
    params.require(:grandmaster).permit(:fullname, :country, :bio, :fide_id, :language)
  end
end
