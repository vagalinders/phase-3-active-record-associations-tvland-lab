nbc = Network.create(call_letters: 'NBC', channel: 4)

jarm = Actor.create(first_name: "Jarm", last_name: "Hardburg")
mark = Actor.create(first_name: "Mark", last_name: "Garrned")
quint = Actor.create(first_name: "Quint", last_name: "Parerg")

h = Show.create(name: "the Harmednesons", day: "Monday", season: "Three", genre: 'comedy', network_id: nbc.id)
Show.create(name: "Jacknet", day: "Sunday", season: "Four", genre: 'comedy', network_id: nbc.id)

Character.create(name:'Hark', actor_id: jarm.id, show_id: h.id)

