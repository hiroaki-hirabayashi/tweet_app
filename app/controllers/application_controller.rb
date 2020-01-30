class ApplicationController < ActionController::Base
  #新規
  def after_sign_in_path_for(resource)
    users_path(resource.id)
  end


  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
