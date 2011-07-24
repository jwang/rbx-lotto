# Read about factories at http://github.com/thoughtbot/factory_girl
require 'factory_girl'

Factory.define :user do |f|

  f.email      'admin@rbxlotto.com'
  f.password   'rubini.usRails3.1'
  f.role       'admin'

  f.password_confirmation {|u| u.password}

end