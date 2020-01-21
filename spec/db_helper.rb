require 'pg'

def persisted_data(id:, table:)
  connection = PG.connect(dbname: 'chitter_challenge_testing')
  connection.query("SELECT * FROM #{table} WHERE id = #{id};")
end
