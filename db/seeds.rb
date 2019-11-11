

User.destroy_all
user1 = User.find_or_create_by(name: 'user1', bio: 'first user' , image: 'https://www.fillmurray.com/250/250', password: '123')
user2 = User.find_or_create_by(name: 'user2', bio: 'second user' , image: 'https://www.fillmurray.com/200/200', password: '123')

Event.destroy_all
event1 = Event.find_or_create_by(name: 'trash pick-up', location: 'D.C.', focus:'community clean-up', date: '11/15/2019', start_time: '9:00AM', end_time: '12:00PM', description: 'picking up trash on the road and sidewalks', host_id: user1.id)
event2 = Event.find_or_create_by(name: 'Canned food drive', location: 'D.C.', focus:'community donation', date: '11/15/2019', start_time: '10:00AM', end_time: '1:00PM', description: 'collecting donations for the homeless', host_id: user2.id)


VolunteerEvent.destroy_all
evolunteer1 = VolunteerEvent.find_or_create_by(volunteer_id: user2.id, event_id: event1.id)
evolunteer2 = VolunteerEvent.find_or_create_by(volunteer_id: user1.id, event_id: event2.id)
