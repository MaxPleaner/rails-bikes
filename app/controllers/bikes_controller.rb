class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy]
  before_action :require_login, except: [:show]
  before_action :maintainer_only, only: [:update, :edit, :destroy]

  def show
  end

  def new
    @bike = Bike.new
  end

  def edit
  end

  def create
    @bike = Bike.new(bike_params)

    respond_to do |format|
      if @bike.save
        format.html { redirect_to '/', notice: 'Bike was successfully created.' }
        format.json { render :show, status: :created, location: @bike }
      else
        format.html { render :new }
        format.json { render json: @bike.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bike.update(bike_params)
        format.html { redirect_to '/', notice: 'Bike was successfully updated.' }
        format.json { render :show, status: :ok, location: @bike }
      else
        format.html { render :edit }
        format.json { render json: @bike.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bike.destroy
    respond_to do |format|
      format.html { redirect_to '/', notice: 'Bike was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_bike
      @bike = Bike.find(params[:id])
    end

    def bike_params
      params.require(:bike).permit(
        :title, :price, :description, :status
      ).merge(maintainer_id: current_user&.id)
    end

    def maintainer_only
      unless current_user.id&.eql?(@bike.maintainer_id)
        redirect_unpermitted
      end
    end

end
