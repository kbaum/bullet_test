class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :suite

      t.timestamps
    end
  end
end
