class UsersController < ApplicationController
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
  def user_params
    params.require(:user).permit(:username, :email, :admin)
  end
end
