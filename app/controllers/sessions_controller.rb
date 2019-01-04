
class SessionsController < ApplicationController


  def new

  end

  def create

user = User.find_by(username: params[:session][:username])
   if user && user.authenticate(params[:session][:password])
     log_in user
      redirect_to user
   else
     if user
     flash.now[:alert] = "Invalid password #{user.username}"

            render 'new'
      else
        flash.now[:alert] = "No user by that username found"

            render 'new'
       end
     end
  end

  def destroy
  log_out
  redirect_to "/login"
end
end
