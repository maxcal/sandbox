class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :bag

      t.timestamps null: false
    end
    add_index :organizations, :name, unique: true
  end
end
