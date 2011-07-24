class Entry < ActiveRecord::Base
  
  validates_uniqueness_of :name, :on => :create, :message => "must be unique"
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  
  scope :winners, where(:won => :true)
  scope :current, where(:won => :false)
  
  
  def self.pick_winner
    #offset = rand(Entry.count)
    #rand_record = Entry.first(:offset => offset)
    #Thing.first(:offset => rand(Thing.count))
    # Rails 3
    self.offset(rand(Entry.current.count)).first
  end
end
