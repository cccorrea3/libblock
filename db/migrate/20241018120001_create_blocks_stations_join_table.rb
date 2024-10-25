class CreateBlocksStationsJoinTable < ActiveRecord::Migration[7.2]
  def change
    create_join_table :blocks, :stations do |t|
      t.index [:block_id, :station_id]
      t.index [:station_id, :block_id]
    end
  end
end