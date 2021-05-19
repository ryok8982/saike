class HomeController < ApplicationController
  def index
    @newses = News.all.order(created_at: "DESC")
    @activities = Activity.where(display: true)
  end
end
