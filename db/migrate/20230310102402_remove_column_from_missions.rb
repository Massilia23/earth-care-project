class RemoveColumnFromMissions < ActiveRecord::Migration[7.0]
  def change
    remove_column :missions, :completed, :boolean
  end
end
