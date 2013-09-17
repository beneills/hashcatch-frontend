# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# users
ben = User.create({ username: 'beneills' })
david_cameron = User.create({ username:'David_Cameron' })

# top entries
TopEntry.create(place: 1,
                text: 'A Confederacy of Dunces',
                link:'http://www.amazon.co.uk/Confederacy-Dunces-Penguin-Modern-Classics/dp/0141182865/ref=sr_1_1?ie=UTF8&qid=1379421344&sr=8-1&keywords=confederacy+of+dunces',
                category: 'book',
                user: ben)

TopEntry.create(place: 1,
                text: 'Dark Side of the Moon',
                link:'http://www.amazon.co.uk/The-Dark-Side-Moon-2011/dp/B004ZNAGNE/ref=sr_1_1?ie=UTF8&qid=1379421396&sr=8-1&keywords=dark+side',
                category: 'album',
                user: david_cameron)
