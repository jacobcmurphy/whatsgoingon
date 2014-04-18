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

 User.create(id: 1000, name: "Sharat-test", about: nil, created_at: Time.now, updated_at: Time.now, email: "runchersp@aim.com", encrypted_password: "$2a$10$erAhkULpvx2hciJKoXsVJ.inh2ptmnM5IdG.CBxQIiIE...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-04-10 17:40:59", last_sign_in_at: "2014-04-10 03:28:28", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, authentication_token: nil, location: "", latitude: 42.3660969, longitude: -71.2583631, visible: true, color_status: 9, password: "Bullshit")

 Friend.create(user_id: 1000, friend_id: 1, accepted: true)
 Friend.create(user_id: 1, friend_id: 1000, accepted: true)