class Prize < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :amount, :on => :create, :message => "can't be blank"
  
  scope :remaining, where("amount > 0")
  
  def pick_winner
    if self.amount > 0
      winner = Entry.pick_winner
      self.amount -= 1
      self.save
      winner
    end
  end
  
end
