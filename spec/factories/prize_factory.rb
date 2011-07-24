# Read about factories at http://github.com/thoughtbot/factory_girl
require 'factory_girl'

Factory.define :prize do |f|

  f.name        'Rubinius T-Shirt'
  f.description 'Size Large'
  f.amount      1

end