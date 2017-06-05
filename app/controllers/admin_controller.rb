class AdminController < ApplicationController

    layout 'admin'

    before_action :confirm_logged_in, except: [:login, :create]

    def login
    end

    def create
      found_user = User.where(userid: params[:userid]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end

      if authorized_user
        session[:user_id] = authorized_user.id
        redirect_to adminarea_path
      else
        render 'login'
      end
    end

    def index
      @users = User.all()
    end

    def new
    end

    def destroy
      session[:user_id] = nil
      redirect_to login_path
    end
end
