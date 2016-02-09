class Mentorships < ActiveRecord::Migration
  def change
    create_table :mentorships, :id => false do |t|
      t.integer :user_id, :null => false
      t.integer :mentor_id, :null => false
    end
  end
end