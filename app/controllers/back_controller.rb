class BackController < ApplicationController
  def index
    # Home page, will just display different links
  end

  def display
  end

  def computer
    # Change this to affect model_year of Pre-owned sheet
    @year = 2017
  end

  def computer_trade_in
    # Will display static trade-in Sheet
  end

  def onsite
    # Will display static onsite sheet
  end
end
