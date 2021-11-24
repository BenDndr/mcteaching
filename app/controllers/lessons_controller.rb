class LessonsController < ApplicationController
    before_action :set_lesson, only:[:show, :edit, :update, :destroy]

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
        if @lesson.save
            redirect_to lessons_path
        else
            render :new
        end
    end

    def edit
    end

    def update
        @lesson.update(lesson_params)
        if @lesson.save
            redirect_to lessons_path
        else
            render :new
        end
    end

    def destroy
        @lesson.destroy
        redirect_to lessons_path
    end

    private

    def lesson_params
        params.require(:lesson).permit(:date, :length, :beginning)
    end

    def set_lesson
        @lesson = Lesson.find(params[:id])
    end
end
