class DanceClassesController < ApplicationController
  before_action :set_dance_class, only: %i[ show update destroy ]

  # GET /dance_classes
  def index
    dance_classes = DanceClass.all

    render json: DanceClassSerializer.new(dance_classes)
    # render json: dance_classes
  end

  # GET /dance_classes/1
  def show
    render json: DanceClassSerializer.new(@dance_class)
    # render json: @dance_class
  end

  # POST /dance_classes
  def create
    # dance_class = Studio.dance_classes.build(dance_class_params)
    dance_class = DanceClass.new(dance_class_params)

    if dance_class.save
      render json: DanceClassSerializer.new(dance_class), status: :created, location: dance_class
    else
      render json: dance_class.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dance_classes/1
  def update
    if @dance_class.update(dance_class_params)
      render json: DanceClassSerializer.new(@dance_class)
    else
      render json: @dance_class.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dance_classes/1
  def destroy
    if @dance_class.destroy
      render json: {message: "Dance Class successfully destroyed"}
    else
      render json: {message: "Something went wrong! #{@dance_class.errors.full_messages}"}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dance_class
      @dance_class = DanceClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dance_class_params
      params.require(:dance_class).permit(:title, :description, :date, :start_time, :end_time, :price, :teacher_id, :studio_id, :level_id)
    end
end
