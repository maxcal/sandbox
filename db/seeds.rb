# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  child = Child.create(parent: Parent.create)
  child.skills << Skill.new( skill_type: ['stealth', 'acrobatics', 'block'].sample )
  child.save
end unless Child.any?