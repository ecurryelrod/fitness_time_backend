class StudiosController < ApplicationController
  before_action :set_studio, only: %i[ show update destroy ]

  def index
    studios = Studio.all
    
    render json: StudioSerializer.new(studios)
    # render json: studios
  end

  def show
    render json: StudioSerializer.new(@studio)
    # render json: @studio
  end

  def create
    @studio = Studio.new(studio_params)

    if @studio.save
      render json: @studio, status: :created, location: @studio
    else
      render json: @studio.errors, status: :unprocessable_entity
    end
  end

  def update
    if @studio.update(studio_params)
      render json: @studio
    else
      render json: @studio.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @studio.destroy
  end

  private
    def set_studio
      @studio = Studio.find(params[:id])
    end

    def studio_params
      params.require(:studio).permit(:name, :email, :phone, :address_1, :address_2, :city, :state, :zipcode)
    end
end
