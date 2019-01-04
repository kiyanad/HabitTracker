current_valuation = 0
last_valuation = 0
current_value = 0

@user = User.first
#finds the user
@activities = UserActivity.all
#Helper variable to show all Activities
@list_activity = @activities.select do |activity|
  activity.user == @user
end
#method to find the a specific users activities and save them to a list_activity variable

@unfinished_activity = @list_activity.select do |activity|
  activity.status == "f"
end.count
#method to find a specific users unfinished_activities and save them to a variable

@finished_activity = @list_activity.select do |activity|
  activity.status == "t"
end.count
#method to find a specific users finished_activities and save them to a variable
Dashing.scheduler.every '5s', :first_in => 0 do

  last_valuation = 0
  current_valuation = @unfinished_activity
  current_value = @finished_activity

  Dashing.send_event('valuation', { current: current_valuation, last: last_valuation })
  Dashing.send_event('synergy',   { value: @finished_activity })
end
