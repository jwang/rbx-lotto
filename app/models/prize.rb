class Prize < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :amount, :on => :create, :message => "can't be blank"
  
  scope :remaining, where("amount > 0")
  
end
