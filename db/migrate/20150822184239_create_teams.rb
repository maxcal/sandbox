class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :wins
      t.integer :loss
      t.integer :tie
      t.belongs_to :scoreboard, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
