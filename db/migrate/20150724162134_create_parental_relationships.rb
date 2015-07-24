class CreateParentalRelationships < ActiveRecord::Migration
  def change
    create_table :parental_relationships do |t|
      t.belongs_to :parent, index: true, foreign_key: true
      t.belongs_to :child, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
