class WorkoutsController < ApplicationController
    before_action :set_workout, only: [:show, :edit, :update, :destroy]
    before_action :authorize, except: [:index, :show]

    def index
        @workouts = Workout.all
    end

    def new
        @workout = Workout.new
        # @user = User.find(params[:user_id])    
        # puts "current user #{@user}"
        # @workout = @user.workouts.build
    end

    def show 
        @workout = Workout.find params[:id]
    end

    def create
        @workout = current_user.workouts.new(workout_params)

        if @workout.save 
            redirect_to workout_path(@workout)
        else 
            redirect_to 'new'
        end
    end

    def edit
        @workout = Workout.find params[:id]
    end 

    def update
        @workout = Workout.find params[:id]
        puts @workout.inspect 
        if @workout.update!(workout_params)
            redirect_to workout_path(@workout)
        else 
            render 'edit'
        end
    end
    
    def destroy 
        @workout = Workout.find params[:id]
        @workout.destroy
        redirect_to root_path
    end

    private

    def set_workout
        @workout = Workout.find(params[:id])
    end

    def workout_params
        params.require(:workout).permit(:name, :location, :description, :reps, :duration, :image)
    end


end

