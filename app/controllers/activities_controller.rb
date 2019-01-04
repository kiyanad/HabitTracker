class ActivitiesController < ApplicationController



  def index

    @ac = Activity.all

  end

  def show

    @activity = Activity.find(params[:id])
    find_user_activity
  end

  def create

  end

  def update
    @activity = Activity.find(params[:id])
      activity_params

    @update_activity = current_user.user_activities.find_by(activity_id: @activity_params["activity_id"])

      if @update_activity.status == false
          @update_activity.update(:status => true)
      else
        @update_activity.update(:status => false)
      end
  redirect_to "/activities/#{@activity.id}"
  end

  def completed
    @user_ac = UserActivity.all.select do |activity|
      activity.user_id == current_user.id
    end
    @completed_activities = @user_ac.select do |activity|
      activity.status == true
    end
  end

  def active
    @user_ac = UserActivity.all.select do |activity|

      activity.user_id == current_user.id
    end


    @active_activities = @user_ac.select do |activity|
      activity.status == false
    end

  end


private

  def activity_params

    @activity_params = params.require(:user_activity).permit("activity_id")
  end

  def find_user_activity
  @user_ac = UserActivity.all.select do |activity|

    activity.user_id == current_user.id
  end

  @find_activity = @user_ac.find do |ac|
    ac.activity_id == @activity.id
    end
  end
end
