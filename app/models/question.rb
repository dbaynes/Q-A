class Question < ActiveRecord::Base
  
  has_and_belongs_to_many :users
  #has_and_belongs_to_many :editors, :class_name => "User"
  
end
