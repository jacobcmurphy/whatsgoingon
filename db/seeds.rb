# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Group.destroy_all

groups = Group.create([
	{id: 1001, user_id: 1, name: "Jacob's Fan Club", visible: true},
	{id: 1002, user_id: 1, name: "COSI Nerds", visible: true},
	{id: 1003, user_id: 1, name: "Pito's Crew", visible: true},
	{id: 1004, user_id: 1, name: "Ridgewood", visible: true},
	{id: 1005, user_id: 1, name: "Help Desk", visible: true},
	{id: 1006, user_id: 1, name: "Archery", visible: true},
	{id: 1007, user_id: 1, name: "Ballroom Dance Club", visible: true}
	])

GroupMember.create(group_id: 1002, user_id: 1, friend_id: 2)

Friend.create(user_id: 1, friend_id: 1, accepted: true)