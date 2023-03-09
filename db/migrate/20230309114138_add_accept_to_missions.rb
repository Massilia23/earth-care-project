class AddAcceptToMissions < ActiveRecord::Migration[7.0]
  def change
    add_column :missions, :accept, :string
  end
end
