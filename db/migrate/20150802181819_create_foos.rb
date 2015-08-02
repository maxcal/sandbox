class CreateFoos < ActiveRecord::Migration
  def change
    create_table :foos do |t|
      t.string :name
      t.string :city
      t.string :website
      t.belongs_to :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
