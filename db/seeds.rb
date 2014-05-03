# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 Group.destroy_all
 User.destroy_all
 Friend.destroy_all
 Event.destroy_all


 User.create(id: 2000, name: "Sharat-test", about: nil, created_at: Time.now, updated_at: Time.now, email: "runchersp@aim.com", encrypted_password: "$2a$10$erAhkULpvx2hciJKoXsVJ.inh2ptmnM5IdG.CBxQIiIE...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: Time.now, last_sign_in_at: Time.now, current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, authentication_token: nil, location: "", latitude: 42.3660969, longitude: -71.2583631, visible: true, color_status: 9, password: "Bullshit")
 User.create(id: 2001, name: "Jacob-test", about: nil, created_at: Time.now, updated_at: Time.now, email: "jcmurphy@brandeis.edu", encrypted_password: "$2a$10$erAhkULpvx2hciJKoXsVJ.inh2ptmnM5IdG.CBxQIiIE...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: Time.now, last_sign_in_at: Time.now, current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, authentication_token: nil, location: "", latitude: 42.3660979, longitude: -71.2583639, visible: true, color_status: 9, password: "Bullshit")

 User.create(id: 2002, name: "David-test", about: nil, created_at: Time.now, updated_at: Time.now, email: "david@gmail.com", encrypted_password: "$2a$10$erAhkULpvx2hciJKoXsVJ.inh2ptmnM5IdG.CBxQIiIE...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: Time.now, last_sign_in_at: Time.now, current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, authentication_token: nil, location: "", latitude: 42.3660989, longitude: -71.2583649, visible: true, color_status: 9, password: "Bullshit")
 User.create(id: 2003, name: "Samir-test", about: nil, created_at: Time.now, updated_at: Time.now, email: "samira@aol.com", encrypted_password: "$2a$10$erAhkULpvx2hciJKoXsVJ.inh2ptmnM5IdG.CBxQIiIE...", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: Time.now, last_sign_in_at: Time.now, current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, authentication_token: nil, location: "", latitude: 42.3660969, longitude: -71.2583629, visible: true, color_status: 9, password: "Bullshit")


 Friend.create(user_id: 2000, friend_id: 1, accepted: true)
 Friend.create(user_id: 1, friend_id: 2000, accepted: true)


 Friend.create(user_id: 2001, friend_id: 1, accepted: true)
 Friend.create(user_id: 1, friend_id: 2001, accepted: true)

 Friend.create(user_id: 2002, friend_id: 1, accepted: true)
 Friend.create(user_id: 1, friend_id: 2002, accepted: true)

 Friend.create(user_id: 2003, friend_id: 1, accepted: true)
 Friend.create(user_id: 1, friend_id: 2003, accepted: true)

groups = Group.create([
	{id: 1002, user_id: 1, name: "COSI Nerds", visible: true},
  	{id: 1003, user_id: 1, name: "Help Desk", visible: true},
  	{id: 1004, user_id: 1, name: "Archery", visible: true},
  	])

GroupMember.create(group_id: 1002, user_id: 1, friend_id: 2000)
GroupMember.create(group_id: 1002, user_id: 1, friend_id: 2001)
GroupMember.create(group_id: 1002, user_id: 1, friend_id: 2002)
GroupMember.create(group_id: 1002, user_id: 1, friend_id: 2003)



GroupMember.create(group_id: 1003, user_id: 1, friend_id: 2000)
GroupMember.create(group_id: 1003, user_id: 1, friend_id: 2001)
GroupMember.create(group_id: 1003, user_id: 1, friend_id: 2002)
GroupMember.create(group_id: 1003, user_id: 1, friend_id: 2003)

GroupMember.create(group_id: 1004, user_id: 1, friend_id: 2000)
GroupMember.create(group_id: 1004, user_id: 1, friend_id: 2001)
GroupMember.create(group_id: 1004, user_id: 1, friend_id: 2002)
GroupMember.create(group_id: 1004, user_id: 1, friend_id: 2003)

Event.create(title: "Class", description: "It's not the most exciting thing, but we pay so much for it.", latitude: 42.3660989, longitude: -71.2583649, group_id: 1002, start_time: 1.hour.ago, end_time: Time.now + 1.hour)
Event.create(title: "Work", description: "Get money get paid.", latitude: 42.3660983, longitude: -71.2583643, group_id: 1003, start_time: 1.hour.ago, end_time: Time.now + 1.hour)
Event.create(title: "Study group", description: "Study hard get hard.", latitude: 42.3660983, longitude: -71.2583643, group_id: 1002, start_time: 1.hour.ago, end_time: Time.now + 1.day)
Event.create(title: "Drug Deal", description: "For dem bitches.", latitude: 42.3660983, longitude: -71.2583643, group_id: 1003, start_time: 1.hour.ago, end_time: Time.now + 1.day)