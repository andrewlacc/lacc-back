class AdminController < ApplicationController
    before_action :confirm_logged_in, except: [:login, :attempt_login]

    def attempt_login
      found_user = User.where(userid: params[:userid]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end

      if authorized_user
        session[:user_id] = authorized_user.id
        session[:username] = authorized_user.name
        session[:access_level] = authorized_user.access_level
        redirect_to root_path
      else
        flash[:alert] = "Login failed, please login with correct login/password."
        render 'login'
      end
    end

    def settings
      @user_setting = User.find( session[:user_id] ).setting
      if @user_setting == nil
        new_setting = Setting.new( user_id: session[:user_id], tax: 0.00 )
        new_setting.save
        @user_setting = new_setting
      end
    end

    def update_settings
      @user_setting = User.find( session[:user_id] ).setting

      new_setting = {
        tax: params[:tax].to_f
      }

      new_setting = validate_settings(new_setting)

      if new_setting == false
        flash[:alert] = "Something went wrong"
        redirect_to settings_path
      elsif @user_setting.update_attributes( new_setting )
        flash[:info] = "Settings saved!"
        redirect_to settings_path
      else
        flash[:alert] = "Unable to save settings."
        redirect_to settings_path
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
      if @user.update_attributes(user_params)
        redirect_to admin_index_path
      else
        flash[:alert] = "Failed to save user"
        render 'edit'
      end
    end

    def destroy
      User.find(params[:id]).destroy
      redirect_to admin_index_path
    end

    def logout
      session[:user_id] = nil
      flash[:info] = "Successfully logged out"
      redirect_to root_path
    end

    private

    def user_params
      params.require(:user).permit(:userid, :name, :email, :password, :access_level)
    end

    def validate_settings(settings)
      if settings[:tax].nil? || !settings[:tax].is_a?(Float)
        return false
      end

      return settings
    end
end
