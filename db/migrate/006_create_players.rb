class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :name, null: false
      t.boolean :gender, null: false
      t.date :biethday, null: false
      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
