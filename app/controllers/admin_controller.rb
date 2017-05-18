class AdminController < ApplicationController

    layout 'admin'

    def create
        redirect_to(adminarea_path)
    end

    def index
    end

    def computer
        @computerType = UsedComputer.computer_type
    end
    
    def display
    end

    def destroy
    end
    
end
