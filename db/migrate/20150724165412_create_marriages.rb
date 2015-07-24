class CreateMarriages < ActiveRecord::Migration
  def change
    create_table :marriages do |t|

      t.timestamps null: false
    end
  end
end
