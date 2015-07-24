class AddCurrentMarriageToUser < ActiveRecord::Migration
  def change
    add_reference :users, :current_marriage, index: true
  end
end
