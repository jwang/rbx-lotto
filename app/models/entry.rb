class Entry < ActiveRecord::Base
  
  validates_uniqueness_of :name, :on => :create, :message => "must be unique"
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  
  scope :winners, where(:won => :true)
  scope :current, where(:won => :false)
  
  
  def self.pick_winner
    if Prize.remaining.size > 0
      self.offset(rand(Entry.current.count)).first
    else
      nil
    end
  end
end
