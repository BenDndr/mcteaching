class LessonsController < ApplicationController
    before_action :set_lesson, only[:show, :edit, :update, :destroy]

    def index
        @lessons = Lesson.all
    end

    def show
    end

    def new
        @lesson = Lesson.new
    end

    def create
        @lesson = Lesson.create(lesson_params)
        redirect_to lessons_path
    end

    def edit
        
    end

    def update
        @lesson.update(params[:lesson])
        redirect_to lesson_path(@lesson)
    end

    def delete
        @lesson.destroy
        redirect_to lessons_path
    end

    private

    def lesson_params
        params.require(:lesson).permit(:date, :course, :length)
    end

    def set_lesson
        @lesson = Lesson.find(params[:id])
    end
end
