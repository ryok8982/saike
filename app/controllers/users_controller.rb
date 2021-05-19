class UsersController < ApplicationController
  before_action :admin_user, only: [:new]
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save && current_user.admin == true
      redirect_to admin_users_path
    elsif @user.save
      redirect_to admin_users_path, notice: "更新が完了しました"
    else
      flash[:danger] = @user.errors.full_messages
      redirect_to edit_admin_user_path(@user)
    end
  end
  private
  def user_params
    params.require(:user).permit(:username, :email, :admin)
  end
  def admin_user
    redirect_to(new_user_session_path) unless current_user.admin?
  end
end
