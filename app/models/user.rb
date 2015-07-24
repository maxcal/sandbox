class User < ActiveRecord::Base
  has_many :parent_relationships,
          foreign_key: 'child_id',
          class_name: 'ParentalRelationship'

  has_many :child_relationships,
          foreign_key: 'parent_id',
          class_name: 'ParentalRelationship'

  has_many :parents,
          through: :parent_relationships,
          class_name: 'User'

  has_many :children,
          through: :child_relationships,
          class_name: 'User'

  has_and_belongs_to_many :marriages
  belongs_to :current_marriage, class_name: 'Marriage'

  def marry(spouse)
    marriage = Marriage.create(users: [self, spouse])
    marriage.users.each { |u| u.update(current_marriage: marriage ) }
    marriage
  end

  def spouse
    current_marriage
      .users.where.not('marriages_users.user_id' => id).first
  end

  def birth(child)
    child.parents << self
    child.parents << spouse if spouse
  end
end
