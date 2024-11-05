class CreateBlocksStationsJoinTable < ActiveRecord::Migration[7.2]
  def change
    unless table_exists?(:blocks_stations)
      create_join_table :blocks, :stations do |t|
        t.index [:block_id, :station_id]
        t.index [:station_id, :block_id]
      end
    end
  end
end