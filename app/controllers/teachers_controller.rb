class TeachersController < ApplicationController
  before_action :set_teacher, only: %i[ show update destroy ]

  def index
    teachers = Teacher.all

    render json: TeacherSerializer.new(teachers)
    # render json: teachers
  end

  def show
    render json: TeacherSerializer.new(@teacher)
    # render json: @teacher
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      render json: @teacher, status: :created, location: @teacher
    else
      render json: @teacher.errors, status: :unprocessable_entity
    end
  end

  def update
    if @teacher.update(teacher_params)
      render json: @teacher
    else
      render json: @teacher.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @teacher.destroy
  end

  private
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    def teacher_params
      params.require(:teacher).permit(:name, :bio)
    end
end
