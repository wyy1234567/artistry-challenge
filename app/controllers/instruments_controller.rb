class InstrumentsController < ApplicationController

    def index
        @instruments = Instrument.all
    end

    def show
        @instrument = Instrument.find(params[:id])
    end

    def new
        @instrument = Instrument.new 
    end

    def create
        @instrument = Instrument.create(instrument_params)
        if @instrument.valid?
            redirect_to instrument_path(@instrument)
        else
            flash[:errors] = @instrument.errors.full_messages
            redirect_to new_instrument_path
        end
    end

    def edit
        @instrument = Instrument.find(params[:id])
    end

    def update
        @instrument = Instrument.find(params[:id])
        if @instrument.update(instrument_params)
            redirect_to instrument_path(@instrument)
        else 
            flash[:errors] = @instrument.errors.full_messages
            redirect_to edit_instrument_path(@instrument)
        end
    end

    private
    def instrument_params
        params.require(:instrument).permit(:name, :classification)
    end
end
