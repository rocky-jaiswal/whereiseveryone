class UserStatus < ActiveRecord::Base
  attr_accessible :comment, :status_id, :status_on, :user_id

  scope :when, lambda { |date| where('status_on = ?', date) }

  belongs_to :user
  belongs_to :status
end
