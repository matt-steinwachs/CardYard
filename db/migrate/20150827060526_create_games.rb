class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :creator_id, :null => false
      t.string :type
      t.json :game_data

      t.timestamps

      t.index :creator_id
    end
  end
end
