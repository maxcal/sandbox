class CreateManifests < ActiveRecord::Migration
  def change
    create_table :manifests do |t|
      t.belongs_to :activity
      t.belongs_to :identity

      t.timestamps null: false
    end
  end
end
