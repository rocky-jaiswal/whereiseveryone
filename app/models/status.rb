class Status < ActiveRecord::Base
  attr_accessible :title, :comment 

  validates_presence_of :title

  has_many :userstatuses
  has_many :users, :through => :userstatuses
end
