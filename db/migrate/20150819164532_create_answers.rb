class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :text
      t.belongs_to :user, index: true, foreign_key: true
      t.integer :answerable_id
      t.string :answerable_type

      t.timestamps null: false
    end

    add_index "answers", ["answerable_type", "answerable_id"]
  end
end
