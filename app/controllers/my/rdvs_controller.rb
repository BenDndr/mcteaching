class My::RdvsController < ApplicationController

    def index
        @rdvs = Rdv.where(user: current_user)
    end

end
