class Admin::NewsController < ApplicationController
  before_action :admin_user
  def index
    @newses = News.all
  end

  def admin_user
    if @current_user==nil
      flash[:notice]="ログインが必要です"
      redirect_to(new_user_session_path)
    end
  end
end
