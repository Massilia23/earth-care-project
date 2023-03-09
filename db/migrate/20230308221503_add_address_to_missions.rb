class AddAddressToMissions < ActiveRecord::Migration[7.0]
  def change
    add_column :missions, :address, :string
  end
end
