class Sighting1sController < ApplicationController
    def index
        @sighting1s = Sighting1.all
        render json: @sighting1s
      end
    
      def show
        @sighting1s = Sighting1.find(params[:id])
        render json: @sighting1s
      end
    
      def create
        @sighting1s = Sighting1.create(sighting1_params)
        if @sighting1s.valid?
          render json: @sighting1s
        else
          render json: @sighting1s.errors
        end
      end
    
      def edit
        @sighting1s = Sighting1.find(params[:id])
      end
    
      def update
        @sighting1s = Sighting1.find(params[:id])
        @sighting1s.update(sighting1_params)
        if @sighting1s.valid?
          render json: @sighting1s
        else
          render json: @sighting1s.errors
        end
      end
    
      def destroy
        @sighting1s = Sighting1.find(params[:id])
        if @sighting1s.destroy
          render json: @sighting1s
        else
          render json: @sighting1s.errors
        end
      end
    
      private
    
      def sighting1_params
          params.require(:sighting1).permit(:animal_id, :latitude, :longitude, :date)
      end
end
