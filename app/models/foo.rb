class Foo < ActiveRecord::Base
  belongs_to :state

  validates :state, presence: true
  validates_associated :state

  def state_code
    state.state_code
  end

  def state_code= code
    self.assign_attributes(state: State.find_by!(state_code: code))
  end

end
