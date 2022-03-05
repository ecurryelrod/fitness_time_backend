class LevelsController < ApplicationController
    before_action :set_level, only: %i[ show ]
  
    def index
      levels = Level.all
      
      render json: LevelSerializer.new(levels)
      # render json: levels
    end
  
    def show
      render json: LevelSerializer.new(@level)
      # render json: @level
    end
  
    private
      def set_level
        @level = Level.find(params[:id])
      end
  
      def level_params
        params.require(:level).permit(:title)
      end
  end