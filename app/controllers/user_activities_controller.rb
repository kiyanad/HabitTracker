class UserActivitiesController < ApplicationController
  def index
  end

  def new
  end
  def create
    UserActivity.create(user_params)
    redirect_to activity_path(user_params["activity_id"])
  end

  def destroy
    find_user_activity
    @find_activity.destroy

    redirect_to activity_path(user_params["activity_id"])
  end

  private
  def user_params
    params.require(:user_activity).permit(["user_id"],["activity_id"])
  end

  def find_user_activity
  @user_ac = UserActivity.all.select do |activity|

    activity.user_id == current_user.id
  end
  @find_activity = @user_ac.find do |ac|
    ac.activity_id == params[:id].to_i
    end
  end

end
