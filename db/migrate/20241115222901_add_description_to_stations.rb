class AddDescriptionToStations < ActiveRecord::Migration[7.2]
  def change
    add_column :stations, :description, :text
  end
end