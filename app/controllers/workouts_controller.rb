class WorkoutsController < ApplicationController

    def index
        @workouts = Workout.all
    end

    def new
        @workout = Workout.new
    end

    def show 
        @workout = Workout.find params[:id]
    end

    def create
        @workout = Workout.new(@workout_params)

        if @workout.save 
            redirect_to workout_path(@workout)
        else 
            redirect_to 'new'
        end
    end
end