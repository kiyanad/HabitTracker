class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]

  def index
    @activities = UserActivity.all
    find_activity
    @useractivities
  end

  def new
    @user = User.new
    description_array
  end

  def create
  description_array
    user_params
    @user = User.new(user_params)
    birthday_params
    @birthday =  Date.new(birthday_params["birthdate(1i)"].to_i,birthday_params["birthdate(2i)"].to_i,birthday_params["birthdate(3i)"].to_i)
    if @user.save
      @user.update(birthdate: @birthday)
      log_in @user
      redirect_to users_path
    else
      flash[:errors] = @user.errors.full_messages

      render :new
    end
  end

  def show
    @activities = UserActivity.all
    find_activity
    @useractivities
  end

  def habits
    @user_ac = UserActivity.all.select do |activity|
      activity.user_id == current_user.id
    end
  end

private


  def user_params

    params.require(:user).permit(:firstname, :lastname, :email, :password, :nickname, :description1, :description2, :description3, :goal, :image_url, :username, :password_confirmation)
  end


  def birthday_params
  params.require(:user).permit("birthdate(1i)", "birthdate(2i)", "birthdate(3i)")
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end


  def find_activity
  @useractivities = @activities.select do |activity|
    activity.user_id == params[:id].to_i
    end
  end

  def description_array
    @description1 = ["Inventive", "Exciting", "Thoughtful", "Powerful", "Practical", "Proactive", "Productive", "Professional", "Meticulous", "Quick", "Balanced", "Achiever"]
    @description2 = ["Knowledgeable", "Leader", "Diplomatic", "Logical", "Initiator", "Original" "Outgoing", "Particular", "Patient", "Active", "Positive", "Consistent"]
    @description3 = ["Compassionate", "Incredible", "Independent", "Precise", "Mediator", "Emotional", "Cheerful", "Forgiving", "Responsive", "Candid", "Industrious", "Cooperative"]
  end
end
