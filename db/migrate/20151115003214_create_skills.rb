class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.belongs_to :child, index: true, foreign_key: true
      t.string :skill_type, index: true

      t.timestamps null: false
    end
  end
end
