class CreateMetroLinesStations < ActiveRecord::Migration[7.2]
  def change
    create_table :metro_lines_stations, id: false do |t|
      t.belongs_to :metro_line
      t.belongs_to :station
    end
  end
end