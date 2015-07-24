class CreateUsersMarriagesJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :marriages do |t|
       t.index [:user_id, :marriage_id]
       t.index [:marriage_id, :user_id]
    end
  end
end
