class Admin::ActivitiesController < ApplicationController
before_action :admin_user

  def index
    @activities = Activity.all
  end

  def admin_user
    if @current_user==nil
      flash[:notice]="ログインが必要です"
      redirect_to(new_user_session_path)
    end
  end
end
