class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :mentor
      t.boolean :mentee
      t.string :password_digest
      t.boolean :admin
      t.text :description

      t.timestamps null: false
    end
  end
end
