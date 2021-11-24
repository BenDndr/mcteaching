class RdvsController < ApplicationController
    before_action :set_rdv, only: :destroy

    def index
        @rdvs = Rdv.all
    end

    def new
        @lesson = Lesson.find(params[:lesson_id])
        @rdv = Rdv.new
    end

    def create
        @rdv = Rdv.new(rdv_params)
        @lesson = Lesson.find(params[:lesson_id])
        @rdv.user = current_user
        @rdv.lesson = @lesson
        if @rdv.save
            if current_user.marie
                redirect_to rdvs_path
            else
                redirect_to my_rdvs_path
            end
        else
            render :new
        end
    end

    def destroy
        @rdv.destroy
        redirect_to rdvs_path
    end

    private
    
    def rdv_params
        params.require(:rdv).permit(:course)
    end

    def set_rdv
        @rdv = Rdv.find(params[:id])
    end

end
