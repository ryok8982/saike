class RequestController < ApplicationController
  def index
    @requests = Request.all
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

  private

  def request_params
    params.require(:request).permit(:name, :request_date, :activity_id, :name, :email, :tel, :message, :address)
  end
end
