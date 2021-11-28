class CuisinesController < ApplicationController
  before_action :set_cuisine, only: %i[show edit update destroy]

  def index
    @q = Cuisine.ransack(params[:q])
    @cuisines = @q.result(distinct: true).includes(:dish).page(params[:page]).per(10)
  end

  def show; end

  def new
    @cuisine = Cuisine.new
  end

  def edit; end

  def create
    @cuisine = Cuisine.new(cuisine_params)

    if @cuisine.save
      message = "Cuisine was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @cuisine, notice: message
      end
    else
      render :new
    end
  end

  def update
    if @cuisine.update(cuisine_params)
      redirect_to @cuisine, notice: "Cuisine was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @cuisine.destroy
    message = "Cuisine was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to cuisines_url, notice: message
    end
  end

  private

  def set_cuisine
    @cuisine = Cuisine.find(params[:id])
  end

  def cuisine_params
    params.require(:cuisine).permit(:name, :dish_id)
  end
end
