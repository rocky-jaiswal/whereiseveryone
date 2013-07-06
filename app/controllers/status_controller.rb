class StatusController < ApplicationController
  
  def get_status
    date = params[:datex]
    status_finder = StatusFinder.new(date)
    user_statuses = status_finder.get_statuses()
    render :json => user_statuses.to_json
  end

end