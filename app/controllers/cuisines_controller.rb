class CuisinesController < ApplicationController
  before_action :set_cuisine, only: %i[show edit update destroy]

  # GET /cuisines
  def index
    @q = Cuisine.ransack(params[:q])
    @cuisines = @q.result(distinct: true).includes(:dish).page(params[:page]).per(10)
  end

  # GET /cuisines/1
  def show; end

  # GET /cuisines/new
  def new
    @cuisine = Cuisine.new
  end

  # GET /cuisines/1/edit
  def edit; end

  # POST /cuisines
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

  # PATCH/PUT /cuisines/1
  def update
    if @cuisine.update(cuisine_params)
      redirect_to @cuisine, notice: "Cuisine was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /cuisines/1
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

  # Use callbacks to share common setup or constraints between actions.
  def set_cuisine
    @cuisine = Cuisine.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def cuisine_params
    params.require(:cuisine).permit(:name, :dish_id)
  end
end
