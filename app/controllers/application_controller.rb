class ApplicationController < ActionController::Base
  protect_from_forgery
  check_authorization :unless => :do_not_check_authorization?
  private
  def do_not_check_authorization?
    respond_to?(:devise_controller?) or
    condition_one? or
    condition_two?
  end
end
