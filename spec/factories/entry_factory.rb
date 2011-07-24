# Read about factories at http://github.com/thoughtbot/factory_girl
require 'factory_girl'

Factory.define :entry do |f|
  f.name      'John Doe'
  f.won       false
end