class AdminController < ApplicationController
    before_action :confirm_logged_in, except: [:login, :attempt_login]

    def login
    end

    def attempt_login
      found_user = User.where(userid: params[:userid]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end

      if authorized_user
        session[:user_id] = authorized_user.id
        session[:username] = authorized_user.name
        redirect_to root_path
      else
        render 'login'
      end
    end

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to admin_index_path
      else
        flash[:alert] = "Failed to create new user"
        render 'new'
      end
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      @user.update_attributes(user_params)
      redirect_to admin_index_path
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to admin_index_path
    end

    def logout
      session[:user_id] = nil
      redirect_to root_path
    end

    private

    def user_params
      params.require(:user).permit(:userid, :name, :email, :password)
    end
end
