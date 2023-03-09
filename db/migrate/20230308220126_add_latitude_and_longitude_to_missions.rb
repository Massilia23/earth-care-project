class AddLatitudeAndLongitudeToMissions < ActiveRecord::Migration[7.0]
  def change
    add_column :missions, :latitude, :float
    add_column :missions, :longitude, :float
  end
end
