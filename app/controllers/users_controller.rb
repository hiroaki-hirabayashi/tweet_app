class UsersController < ApplicationController
  def index

  end

  


  def new_guest
    user = User.guest
    sign_in user
    redirect_to notes_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
