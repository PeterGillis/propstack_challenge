class CreateSpaceships < ActiveRecord::Migration[6.0]
  def change
    create_table :spaceships do |t|
      t.string :name
      t.integer :crew

      t.timestamps
    end
  end
end
