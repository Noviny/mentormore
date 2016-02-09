class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :answer_id

      t.timestamps null: false
    end
  end
end
