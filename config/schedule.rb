require File.expand_path(File.dirname(__FILE__) + "/../config/environment")


every 1.day, at: '5:00 am' do
  runner 'Parsers::Scores.parse_scores'
end
