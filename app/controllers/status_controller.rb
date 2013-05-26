class StatusController < ApplicationController
  
  def get_status
    status_finder = StatusFinder.new
    day = params[:datex] || Date.today
    user_statuses = status_finder.get_user_statuses(day)
    render :json => user_statuses.to_json
  end

end