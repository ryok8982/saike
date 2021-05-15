class Admin::NewsController < ApplicationController

  def index
    @newses = News.all
  end
end
