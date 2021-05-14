class Admin::UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    if current_user.admin?
      user.destroy
      redirect_to admin_users_path, notice: 'ユーザーを削除しました。'
    end
  end

  def admin_user
    redirect_to(root_path) unless current_user.admin?
  end
end
