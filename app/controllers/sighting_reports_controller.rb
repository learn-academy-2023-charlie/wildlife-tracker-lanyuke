class SightingReportsController < ApplicationController

      def index
        @sighting_reports = SightingReport.all
        render json: @sighting_reports, include: [:animal, :sighting1]
      end
    
      def show
        @sighting_reports = SightingReport.find_by(id: params[:id])
        if @sighting_reports
            render json: @sighting_reports, include: [:animal, :sighting1]
        else
            render json: {message: 'error!'}
        end
      end
    
      def create
        @sighting_reports = SightingReport.create(Sighting_report_params)
        if @sighting_reports.valid?
          render json: @sighting_reports
        else
          render json: @sighting_reports.errors
        end
      end
    
      def edit
        @sighting_reports = SightingReport.find(params[:id])
      end
    
      def update
        @sighting_reports = SightingReport.find(params[:id])
        @sighting_reports.update(Sighting_report_params)
        if @sighting_reports.valid?
          render json: @sighting_reports
        else
          render json: @sighting_reports.errors
        end
      end
    
      def destroy
        @sighting_reports = SightingReport.find(params[:id])
        if @sighting_reports.destroy
          render json: @sighting_reports
        else
          render json: @sighting_reports.errors
        end
      end
    
      private
    
      def Sighting_report_params
          params.require(:sighting_report).permit(:animal_id, :latitude, :longitude, :date)
      end
end
