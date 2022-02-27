class LevelsController < ApplicationController
    before_action :set_level, only: %i[ show ]
  
    # GET /studios
    def index
      levels = Level.all
      
      render json: LevelSerializer.new(levels)
      # render json: levels
    end
  
    # GET /studios/1
    def show
      render json: LevelSerializer.new(@level)
      # render json: @level
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_level
        @level = Level.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def level_params
        params.require(:level).permit(:title)
      end
  end