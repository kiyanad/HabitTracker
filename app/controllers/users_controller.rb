class UsersController < ApplicationController
before_action :require_login, except: [:new, :create]
  def index
    @activities = UserActivity.all
    find_activity
    @useractivities

  end

  def show
    @activities = UserActivity.all
    find_activity
    @useractivities

  end

  def new
    @user = User.new
    @description1 = ["Inventive", "Exciting", "Thoughtful", "Powerful", "Practical", "Proactive", "Productive", "Professional", "Meticulous", "Quick", "Balanced", "Achiever"]
    @description2 = ["Knowledgeable", "Leader", "Diplomatic", "Logical", "Initiator", "Original" "Outgoing", "Particular", "Patient", "Active", "Positive", "Consistent"]
    @description3 = ["Compassionate", "Incredible", "Independent", "Precise", "Mediator", "Emotional", "Cheerful", "Forgiving", "Responsive", "Candid", "Industrious", "Cooperative"]


  end

  def create
    user_params
    @user = User.create(user_params)
    
    log_in @user
    redirect_to users_path
  end

  def habits

    @user_ac = UserActivity.all.select do |activity|

      activity.user_id == current_user.id
    end

  end

private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :nickname, :description1, :description2, :description3, :goal, :image_url, :username)
  end
  def require_login
    return head(:forbidden) unless session.include? :user_id
  end


  def find_activity
  @useractivities = @activities.select do |activity|
    activity.user_id == params[:id].to_i
end
  end
end
