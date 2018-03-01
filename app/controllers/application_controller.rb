class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def parse_values(data_hash)
    parse_array = []

    data_hash.each do |data|
      parse_array.push(data.value)
    end

    parse_array
  end

  def confirm_logged_in
    unless session[:user_id]
      redirect_to login_path
    end
  end

  def clean_value(value)
    return value.gsub(/[$%\#{}'"]/, '')
  end
end
