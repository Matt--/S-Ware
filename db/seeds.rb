
Volcoordinator.create([{
  email_replyto: 'coordinator@test.com',
  email_header: 'SPCA Application',
  email_content: 'Thank you for your application to become an SPCA Volunteer. We value all our volunteers and appreciate the many ways you can help us out. Please bear with us while your application is processed and we will reply to you by email in approximately 10 working days.'
}])


Frequency.create([{name: "monthly", week: 2}])

Volunteer.create([{
  title: 'fosterer',
  dob: '12-10-1991',
  firstname: 'Andrew',
  lastname: 'Blah blah',
  address: '3/1 Braithwaite st, karori, wellington',
  email: 'andrew@gmail.com',
# mobile: 02265,
  home: 0447747,
  background: 'blah blah'},
  {
  title: 'cat walker',
  dob: '12-10-1991',
  firstname: 'Matt',
  lastname: 'Blah de blah blah',
  address: '4 CamelCase st, karori, wellington',
  email: 'matt@something.com',
# mobile: 02265,
  home: 04123456,
  background: 'like cats and walking'},
  {
  title: 'handyman',
  dob: '12-10-1991',
  firstname: 'James',
  lastname: 'Whoop de whoop',
  address: '5 snakeCase st, karori, wellington',
  email: 'james@overhere.com',
# mobile: 02265,
  home: '0425469',
  background: 'like afternoons, mornings are for hangover recovery'},
  {
  title: 'dude',
  dob: '12-10-1991',
  firstname: 'Hamid',
  lastname: 'Dum de Dum',
  address: '6 lowercase st, karori, wellington',
  email: 'hamid@doinstuff.com',
# mobile: 02265,
  home: '04985423',
  background: 'hate paperwork'},
  {
  title: 'newbie',
  dob: '12-10-1991',
  firstname: 'Mymom',
  lastname: 'Hey you',
  address: '6 UPPERCASE st, karori, wellington',
  email: 'mymom@givingmeshite.com',
# mobile: 02265,
  home: '0498999999',
  background: 'hate student layabouts'}
])


Fosterer.create([{ 
                             
 motivation: 'I like to be a fosterer', 
 catnursing: false,
 catfeeding: true, 
 catbottlefeed: true, 
 catinjured: false,	
 dognursing: false, 
 dogfeeding: false,
 dogbottlefeed: true,
 doginjured: false,
 rabgui: true, 
 hedgehoginjured: true,
 hedgehogbottle: true,
 birdsinjured: false,
 birdstoung: false,
 livestock: false,
 volunteer_id: 1 
}, { 
                             
 motivation: 'I like to be a fosterer', 
 catnursing: false,
 catfeeding: true, 
 catbottlefeed: true, 
 catinjured: false,	
 dognursing: false, 
 dogfeeding: false,
 dogbottlefeed: true,
 doginjured: false,
 rabgui: true, 
 hedgehoginjured: true,
 hedgehogbottle: true,
 birdsinjured: false,
 birdstoung: false,
 livestock: false,
 volunteer_id: 2 
},{ 
                             
 motivation: 'I like to be a fosterer', 
 catnursing: false,
 catfeeding: true, 
 catbottlefeed: true, 
 catinjured: false,	
 dognursing: false, 
 dogfeeding: false,
 dogbottlefeed: true,
 doginjured: false,
 rabgui: true, 
 hedgehoginjured: true,
 hedgehogbottle: true,
 birdsinjured: false,
 birdstoung: false,
 livestock: false,
 volunteer_id: 3 
}])


Volscheduler.create([{
  
}])

VolJobDay.create([
  { volunteer_id: 1, dojob_id: 1, onday_id: 1, frequency_id: 1 },
  { volunteer_id: 1, dojob_id: 1, onday_id: 2 },
  { volunteer_id: 1, dojob_id: 1, onday_id: 3 },
  { volunteer_id: 1, dojob_id: 1, onday_id: 4 },
  { volunteer_id: 1, dojob_id: 2, onday_id: 5 },
  { volunteer_id: 1, dojob_id: 1, onday_id: 6 },
  { volunteer_id: 1, dojob_id: 1, onday_id: 7 },
  { volunteer_id: 2, dojob_id: 1, onday_id: 1 },
  { volunteer_id: 2, dojob_id: 1, onday_id: 2 },
  { volunteer_id: 2, dojob_id: 1, onday_id: 3 },
  { volunteer_id: 2, dojob_id: 1, onday_id: 4 },
  { volunteer_id: 2, dojob_id: 3, onday_id: 5 },
  { volunteer_id: 2, dojob_id: 1, onday_id: 6 },
  { volunteer_id: 2, dojob_id: 1, onday_id: 7 },
  { volunteer_id: 3, dojob_id: 1, onday_id: 1 },
  { volunteer_id: 3, dojob_id: 3, onday_id: 2 },
  { volunteer_id: 3, dojob_id: 1, onday_id: 3 },
  { volunteer_id: 3, dojob_id: 1, onday_id: 4 },
  { volunteer_id: 3, dojob_id: 1, onday_id: 5 },
  { volunteer_id: 3, dojob_id: 1, onday_id: 6 },
  { volunteer_id: 3, dojob_id: 1, onday_id: 7 },
  { volunteer_id: 4, dojob_id: 1, onday_id: 1 },
  { volunteer_id: 4, dojob_id: 4, onday_id: 2 },
  { volunteer_id: 4, dojob_id: 1, onday_id: 3 },
  { volunteer_id: 4, dojob_id: 1, onday_id: 4 },
  { volunteer_id: 4, dojob_id: 1, onday_id: 5 },
  { volunteer_id: 4, dojob_id: 3, onday_id: 6 },
  { volunteer_id: 4, dojob_id: 3, onday_id: 7 },
  { volunteer_id: 5, dojob_id: 1, onday_id: 1 },
  { volunteer_id: 5, dojob_id: 5, onday_id: 2 },
  { volunteer_id: 5, dojob_id: 6, onday_id: 3 },
  { volunteer_id: 5, dojob_id: 7, onday_id: 4 },
  { volunteer_id: 5, dojob_id: 1, onday_id: 5 },
  { volunteer_id: 5, dojob_id: 1, onday_id: 6 },
  { volunteer_id: 5, dojob_id: 1, onday_id: 7 },
])

Dojob.create([
  { name: 'none'},
  { name: 'Morning 8-12'},
  { name: 'Afternoon 1-5'},
  { name: 'Cat walking'},
  { name: 'Cat rescue'},
  { name: 'Cat hugging'},
  { name: 'Cat Admin'}
])

Onday.create([{name: 'Monday'}, {name: 'Tuesday'}, {name: 'Wednesday'}, {name: 'Thursday'}, {name: 'Friday'}, {name: 'Saturday'}, {name: 'Sunday'}])

