# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Volcoordinator.create([{
  email_replyto: 'coordinator@test.com', 
  email_header: 'SPCA Application', 
  email_content: 'Thank you for your application to become an SPCA Volunteer. We value all our volunteers and appreciate the many ways you can help us out. Please bear with us while your application is processed and we will reply to you by email in aprroximately 10 working days.'
}])

Volunteer.create([{
  title: 'fosterer', 
  dob: '12-10-1991', 
  firstname: 'Andrew',
  lastname: 'Blah blah',
  address: '3/1 Braithwaite st, karori, wellington',
  email: 'andrew@gmail.com',
#  mobile: 02265,
  home: 0447747,
  background: 'blah blah'},
  {
  title: 'cat walker', 
  dob: '12-10-1991', 
  firstname: 'Matt',
  lastname: 'Blah de blah blah',
  address: '4 CamelCase st, karori, wellington',
  email: 'matt@something.com',
#  mobile: 02265,
  home: 04123456,
  background: 'like cats and walking'},
  {
  title: 'handyman', 
  dob: '12-10-1991', 
  firstname: 'James',
  lastname: 'Whoop de whoop',
  address: '5 snakeCase st, karori, wellington',
  email: 'james@overhere.com',
#  mobile: 02265,
  home: '0425469',
  background: 'like afternoons, mornings are for hangover recovery'},
  {
  title: 'dude', 
  dob: '12-10-1991', 
  firstname: 'Hamid',
  lastname: 'Dum de Dum',
  address: '6 lowercase st, karori, wellington',
  email: 'hamid@doinstuff.com',
#  mobile: 02265,
  home: '04985423',
  background: 'hate paperwork'},
  {
  title: 'newbie', 
  dob: '12-10-1991', 
  firstname: 'Mymom',
  lastname: 'Hey you',
  address: '6 UPPERCASE st, karori, wellington',
  email: 'mymom@givingmeshite.com',
#  mobile: 02265,
  home: '0498999999',
  background: 'hate student layabouts'}
])

Fosterer.create([{
  personal2: 'I like fostering',   
                        
                              
}])

Volscheduler.create([{
  
}])


Dojob.create([
  { volscheduler_id: 1, job: 'Morning 8-12' },
  { volscheduler_id: 1, job: 'Afternoon 1-5' },
  { volscheduler_id: 1, job: 'Cat walking' },
  { volscheduler_id: 1, job: 'Cat rescue' },
  { volscheduler_id: 1, job: 'Cat hugging' },
  { volscheduler_id: 1, job: 'Cat Admin' }
])

Onday.create([
  { volunteer_id: 1, day: 'Sun', dayint: 0, dojob_id: 4 },
  { volunteer_id: 1, day: 'Mon', dayint: 1, dojob_id: 4 },
  { volunteer_id: 1, day: 'Thu', dayint: 4, dojob_id: 4 },
  { volunteer_id: 1, day: 'Fri', dayint: 5, dojob_id: 4 },
  { volunteer_id: 2, day: 'Mon', dayint: 1, dojob_id: 3 },
  { volunteer_id: 2, day: 'Tue', dayint: 2, dojob_id: 3 },
  { volunteer_id: 2, day: 'Wed', dayint: 3, dojob_id: 3 },
  { volunteer_id: 3, day: 'Mon', dayint: 1, dojob_id: 2 },
  { volunteer_id: 3, day: 'Tue', dayint: 2, dojob_id: 2 },
  { volunteer_id: 3, day: 'Thu', dayint: 4, dojob_id: 2 },
  { volunteer_id: 3, day: 'Sat', dayint: 6, dojob_id: 2 },
  { volunteer_id: 4, day: 'Mon', dayint: 1, dojob_id: 6 },
  { volunteer_id: 4, day: 'Mon', dayint: 1, dojob_id: 1 },
  { volunteer_id: 4, day: 'Wed', dayint: 3, dojob_id: 1 },
  { volunteer_id: 4, day: 'Wed', dayint: 3, dojob_id: 2 },
  { volunteer_id: 4, day: 'Wed', dayint: 3, dojob_id: 3 }
])
