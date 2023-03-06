class CreateVouchers < ActiveRecord::Migration[7.0]
  def change
    create_table :vouchers do |t|
      t.integer :total_points
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
