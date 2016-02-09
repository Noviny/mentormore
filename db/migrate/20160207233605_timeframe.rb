class Timeframe < ActiveRecord::Migration
  def change
    add_column :questions, :timeframe, :integer
  end
end
