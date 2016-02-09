class MoreMentorship < ActiveRecord::Migration
  def change
    add_column :answers, :more_mentorship, :boolean
    remove_column :questions, :timeframe
    add_column :questions, :timeframe, :date
  end
end
