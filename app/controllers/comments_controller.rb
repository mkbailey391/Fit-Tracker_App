class CommentsController < ApplicationController

    def new 
        @workout = Workout.find params[:workout_id]
        @comment = @workout.comments.build
    end

    def create
        @workout = Workout.find params[:workout_id]
        new_comment = @workout.comments.new(comment_params)

        if new_comment.save
            redirect_to workout_path(@workout)
        else
            redirect_to 'new'
        end
    end

        def edit
            @comment = Comment.find(params[:id])
        end

        def update
            @comment = Comment.find params[:id]
            @workout = Workout.find[:workout_id]

            if @comment.update(comment_params)
                redirect_to workout_path(@workout)
            else
                redirect_to "edit"
            end
        end
        
        def destroy
            @workout = Workout.find params[:workout_id]
            @comment = @workout.comments.find(params[:id])
            @comment.destroy
            redirect_to workout_path(@comment)
        end

        private
        def comment_params
            params.require(:comment).permit(:author, :body, :recommend)
        end
    end

