class CreateScoreboards < ActiveRecord::Migration
  def change
    create_table :scoreboards do |t|
      t.string :name_of_activity
      t.string :name_of_scoreboard
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
