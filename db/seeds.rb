

User.destroy_all
user1 = User.find_or_create_by(name: 'user1', bio: 'first user' , image: 'none')
user2 = User.find_or_create_by(name: 'user2', bio: 'second user' , image: 'none')

Event.destroy_all
event1 = Event.find_or_create_by(name: 'trash pick-up', location: 'D.C.', focus:'community clean-up', start_time: '9:00AM', end_time: '12:00PM', description: 'picking up trash on the road and sidewalks', host_id: user1.id, volunteer_id: user2.id)
event2 = Event.find_or_create_by(name: 'Canned food drive', location: 'D.C.', focus:'community donation', start_time: '10:00AM', end_time: '1:00PM', description: 'collecting donations for the homeless', host_id: user2.id, volunteer_id: user1.id)
