class CreateCrewMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :crew_members do |t|
      t.string :name
      t.integer :age
      t.string :rank
      t.string :assignment
      t.references :spaceship, null: false, foreign_key: true

      t.timestamps
    end
  end
end
