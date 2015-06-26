class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.belongs_to :activity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
