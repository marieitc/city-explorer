class PagesController < ApplicationController
  def home
  end

  def components
  end

  def profile
    @user = User.find(params[:id])
    # @my_participations = Participation.where(user: current_user.participations)
  end
end
