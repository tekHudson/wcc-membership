class ContentController < ApplicationController
  before_action :authenticate_user!

  def glass_tube
    redirect_to root_path, :notice => "Access denied." unless current_user.glass_tube?
  end

  def herfador
    redirect_to root_path, :notice => "Access denied." unless current_user.herfador?
  end

  def humidor
    redirect_to root_path, :notice => "Access denied." unless current_user.humidor?
  end

end
