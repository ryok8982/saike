class RequestsController < ApplicationController
  before_action :admin_user, only: [:index]
  def index
    @requests = Request.all.order(created_at: "DESC")
    @activities = Activity.all
  end

  def new
    @activities = Activity.where(display: true)
    @request = Request.new
  end

  def create
    @activities = Activity.where(display: true)
    @request = Request.new(request_params)
    if @request.save
      redirect_to root_path, notice: "リクエストが完了しました"
    else
      flash[:danger] = @request.errors.full_messages
      @request = Request.new(request_params)
      render 'new'
    end
  end

  def destroy
    request = Request.find(params[:id])
      request.destroy
      redirect_to requests_path, notice: 'リクエストを削除しました。'
  end

  private

  def request_params
    params.require(:request).permit(:name, :request_date, :people_adult, :people_child, :activity_id, :name, :email, :tel, :message, :address)
  end

  def admin_user
    redirect_to(new_user_session_path) unless user_signed_in? && current_user.admin
  end
end
