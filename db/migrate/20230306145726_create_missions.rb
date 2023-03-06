class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.datetime :duration
      t.string :location
      t.string :dess_code
      t.integer :reward
      t.datetime :start_time
      t.integer :rating
      t.boolean :completed
      t.boolean :personal_choice
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
