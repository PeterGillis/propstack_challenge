class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.string :description
      t.integer :length
      t.date :start_date
      t.references :crew_member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
