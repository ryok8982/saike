class AdminController < ApplicationController
  before_action :admin_user
  def index
  end

  private
  def admin_user
    redirect_to(new_user_session_path) unless user_signed_in? && current_user.admin
  end
end
