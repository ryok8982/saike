class NewsController < ApplicationController
  def index
  end

  def show
  end

  def edit
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
end

private

def news_params
  params.require(:news).permit(:title, :body, :image)
end
