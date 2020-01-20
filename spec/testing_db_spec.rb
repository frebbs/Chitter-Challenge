require './lib/connect_to_db'

describe DBConnection do
  describe '.setup' do
    it 'should setup a PG connection to chitter' do
      expect(PG).to receive(:connect).with(dbname: 'chitter_challenge_testing')
      DBConnection.setup('chitter_challenge_testing')
    end

    it 'this connection is persistent' do
      connection = DBConnection.setup('chitter_challenge_testing')

      expect(DBConnection.connection).to eq connection
    end
  end

  describe '.query' do
    it 'executes a query via PG' do
      connection = DBConnection.setup('chitter_challenge_testing')
      expect(connection).to receive(:exec).with("SELECT * FROM peeps;")
      DBConnection.query("SELECT * FROM peeps;")
    end
  end
end
