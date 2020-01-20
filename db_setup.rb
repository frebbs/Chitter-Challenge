require './lib/connect_to_db'

if ENV['ENVIRONMENT'] == 'test'
  DBConnection.setup('chitter_challenge_testing')
else
  DBConnection.setup('chitter_challenge')
end
