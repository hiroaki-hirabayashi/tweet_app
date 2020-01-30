class Users::RegistrationsController < Devise::RegistrationsController
  #ログイン時
  def after_sign_up_path_for(resource)
    users_path(resource.id)
  end

  #アカウント編集後のリダイレクト先
  def after_update_path_for(resource)
    users_path(resource.id)
  end

 before_action :check_guest, only: %i[update destroy]
  def check_guest
    if resource.email == 'guest@example.com'
      redirect_to root_path, alert: 'ゲストユーザーの変更、削除はできません。'
    end
  end


end
