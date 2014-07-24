class CreateUserSpaces < ActiveRecord::Migration
  def change
    create_table :user_spaces do |t|
      t.integer :user_id
      t.integer :space_id
      t.string :role
      t.integer :position
      t.timestamps
    end
  end
end
