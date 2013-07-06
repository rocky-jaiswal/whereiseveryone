class User < ActiveRecord::Base
  attr_accessible :fmno, :name, :email

  validates_presence_of :name

  has_many :user_statuses
  has_many :statuses, :through => :user_statuses

end
