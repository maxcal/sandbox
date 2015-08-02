class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state_code
      t.string :name

      t.timestamps null: false
    end
    add_index :states, :state_code, unique: true
  end
end
