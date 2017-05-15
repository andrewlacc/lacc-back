class AdminController < ApplicationController

    layout 'admin'

    def create
        redirect_to(adminarea_path)
    end

    def index
    end

    def computer
        @types = Type.all
    end
    
    def display
    end

    def destroy
    end
    
end
