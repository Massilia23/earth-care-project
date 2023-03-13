class AddColumnToMissions < ActiveRecord::Migration[7.0]
  def change
    add_column :missions, :reward, :integer
  end
end
