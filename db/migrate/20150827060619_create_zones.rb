class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.belongs_to :user, index: true
      t.belongs_to :game, index: true
      t.json :zone_data

      t.timestamps
    end
  end
end
