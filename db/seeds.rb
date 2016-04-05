# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


teams = ["D-backs",
         "Braves",
         "Orioles",
         "Red Sox",
         "White Sox",
         "Cubs",
         "Reds",
         "Indians",
         "Rockies",
         "Tigers",
         "Marlins",
         "Astros",
         "Royals",
         "Angels",
         "Dodgers",
         "Brewers",
         "Twins",
         "Mets",
         "Yankees",
         "Athletics",
         "Phillies",
         "Pirates",
         "Padres",
         "Giants",
         "Mariners",
         "Cardinals",
         "Rays",
         "Rangers",
         "Blue Jays",
         "Nationals"]

names = ("a".."z").to_a + ["aa", "bb", "cc", "dd"]

teams.each_with_index do |team, i|
  Team.create(name: names[i], team: team)
end
