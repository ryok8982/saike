class ActivitiesController < ApplicationController
  before_action :admin_user, only: [:new, :edit]
  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to activities_path, notice: "作成しました"
    else
      flash[:danger] = @activity.errors.full_messages
      @activity = Activity.new(activity_params)
      redirect_to new_activity_path
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def destroy
    activity = Activity.find(params[:id])
      activity.destroy
      redirect_to admin_activities_path, notice: '削除しました。'
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    if @activity.save
      redirect_to activities_path, notice: "更新しました"
    else
      flash[:danger] = @activity.errors.full_messages
      @activity = Activity.new(activity_params)
      redirect_to edit_activity_path
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :body, :price, :time, :price_for_child, :price_for_one, :display, :image)
  end

  def admin_user
    redirect_to(new_user_session_path) unless user_signed_in? && current_user.admin
  end
end
