class ApplicationController < ActionController::Base
  protect_from_forgery with:  :exception
  add_flash_types :success, :info, :warning, :danger
  
  include ApplicationHelper
  
  def  user
    current_user
  end
  
  def logged
    logged_in?
  end
end
