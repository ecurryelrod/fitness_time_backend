class DanceClassesController < ApplicationController
  before_action :set_dance_class, only: %i[ show update destroy ]

  def index
    dance_classes = DanceClass.all
    dance_classes.order_by_date

    render json: DanceClassSerializer.new(dance_classes.order_by_date)
    # render json: dance_classes
  end

  def show
    render json: DanceClassSerializer.new(@dance_class)
    # render json: @dance_class
  end

  def create
    dance_class = DanceClass.new(dance_class_params)

    if dance_class.save
      render json: DanceClassSerializer.new(dance_class), status: :created, location: dance_class
    else
      render json: dance_class.errors, status: :unprocessable_entity
    end
  end

  def update
    if @dance_class.update(dance_class_params)
      render json: DanceClassSerializer.new(@dance_class)
    else
      render json: @dance_class.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @dance_class.destroy
      render json: {message: "Dance Class successfully destroyed"}
    else
      render json: {message: "Something went wrong! #{@dance_class.errors.full_messages}"}
    end
  end

  private
    def set_dance_class
      @dance_class = DanceClass.find(params[:id])
    end

    def dance_class_params
      params.require(:dance_class).permit(:title, :description, :date, :start_time, :end_time, :price, :teacher_id, :studio_id, :level_id)
    end
end
