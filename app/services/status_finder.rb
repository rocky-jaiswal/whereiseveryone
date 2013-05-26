class StatusFinder 

  def get_user_statuses(day)
    user_statuses = []
    User.all.each do |user|
      user_statuses << get_status_for_user(user, day)
    end
    user_statuses.sort {|a, b| a[:user_name] <=> b[:user_name]}
  end

  def get_status_for_user(user, day)
    statuses = user.user_statuses.when(day)
    if statuses.nil? || statuses.blank?
      status_today = UserStatus.new
      status_today.status = Status.new(:title => 'In Gurgaon Office')
    else
      status_today = statuses.first
    end
    {:user_id => user.id, :user_name => user.name, :status => status_today.status.title, :comments => status_today.comment, :day => day}
  end

end