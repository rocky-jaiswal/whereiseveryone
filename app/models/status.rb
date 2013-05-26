class Status < ActiveRecord::Base
  attr_accessible :comment, :title

  validates_presence_of :title

  has_many :userstatuses
  has_many :users, :through => :userstatuses
end
