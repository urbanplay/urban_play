class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_body_id

  def set_body_id
    @body_id = [ controller_name, action_name ].join('-') 
  end

  def body_id
    @body_id || ''
  end
  helper_method :body_id
end
