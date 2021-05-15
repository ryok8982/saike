class ActivitiesController < ApplicationController
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
      redirect_to admin_activity_path, notice: '削除しました。'
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
end
