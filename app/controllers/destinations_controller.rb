class DestinationsController < ApplicationController
    def index
        @destinations = Destination.all
    end

    def new
        @destination = Destination.new
    end

    def create
        @destination = Destination.new(blogger_params)
        if @destination.valid?
            @destination.save
            redirect_to @destination
        else 
            render new
        end
    end
    def show
        @destination = Destination.find(params[:id])
    end


private
    def blogger_params
        params.require(:destination).permit(:name, :country)
    end
end