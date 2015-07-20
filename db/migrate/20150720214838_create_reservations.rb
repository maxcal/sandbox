class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.belongs_to :room, index: true, foreign_key: true
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps null: false
    end
  end
end
