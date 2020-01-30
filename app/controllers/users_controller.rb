class UsersController < ApplicationController
  def index

  end

  def edit
    redirect_to users_path

  end

  def new_guest
    user = User.guest
    sign_in user
    redirect_to users_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
