class StatusFinder

  def initialize(date)
    @date = date
  end

  def get_statuses
    user_statuses = []
    @statuses = UserStatus.when(@date)
    User.all.each do |user|
      user_statuses.push(get_status_for_user(user))
    end
    user_statuses.sort {|a, b| a[:user_name] <=> b[:user_name]}
  end

  def get_status_for_user(user)
    user_status = @statuses.select{|updated_status| updated_status.user_id == user.id}
    if user_status.empty?
      status_today = UserStatus.new
      status_today.status = Status.new(:title => 'In Office')
    else
      status_today = user_status.first
    end
    {:user_id => user.id, :user_name => user.name, :status => status_today.status.title, :comments => status_today.comment, :date => @date}
  end

end