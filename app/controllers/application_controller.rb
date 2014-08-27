class ApplicationController < ActionController::Base
  after_filter :set_access_control_headers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  def set_access_control_headers
    p 'aa gaya here'
    headers['Access-Control-Allow-Origin'] = '*' 
    headers['Access-Control-Request-Method'] = 'GET, HEAD'
    headers['Access-Control-Allow-Headers'] = 'x-requested-with,Content-Type, Authorization'
  end
end
