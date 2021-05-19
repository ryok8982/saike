class NewsController < ApplicationController
  before_action :admin_user, only: [:new, :edit]
  def index
    @newses = News.all
  end

  def show
    @news = News.find(params[:id])
    @newses = News.all
  end

  def edit
    @news = News.find(params[:id])
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to news_path(@news), notice: "更新しました"
    else
      flash[:danger] = @news.errors.full_messages
      @news = News.new(news_params)
      redirect_to new_news_path
    end
  end
  def destroy
    news = News.find(params[:id])
      news.destroy
      redirect_to admin_news_index_path, notice: '部屋を削除しました。'
  end

  def update
    @news = News.find(params[:id])
    @news.update(news_params)
    if @news.save
      redirect_to news_path(@news), notice: "更新しました"
    else
      flash[:danger] = @news.errors.full_messages
      @news = News.new(news_params)
      redirect_to new_news_path
    end
  end

private

  def news_params
    params.require(:news).permit(:title, :body, :image)
  end

  def admin_user
    redirect_to(new_user_session_path) unless current_user.admin?
  end
end
