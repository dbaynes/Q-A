class QuestionUser < ActiveRecord::Base
  
  belongs_to_many :users
  belongs_to_many :questions
  #has_and_belongs_to_many :editors, :class_name => "User"
  
end