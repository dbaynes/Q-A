class CreateQuestionsUsers < ActiveRecord::Migration
  def change
    create_table :questions_users, :id => false do |t|
      t.belongs_to :question
      t.belongs_to :user
    end
  end
end
