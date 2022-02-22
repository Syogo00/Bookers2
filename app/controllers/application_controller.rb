class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top, :about]

  before_action :configure_parmitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resourse)
    user_path(current_user.id)
  end

  def after_sign_out_oath_for(resourse)
    root_path
  end

  protected

  def configure_parmitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:email])
  end

end
