desc "This task is called by the Heroku scheduler add-on and updates the scores"
task :parse_scores => :environment do
  puts "Adding scores..."
  Parsers::Scores.parse_scores
  puts "done."
end
