require './lib/peep_model'
require './lib/connect_to_db'
require_relative 'db_helper'

describe Peep do

  describe '.all' do

    test_peep1 = {:title => 'Simon',
                 :message => 'Test Peep'}
    test_peep2 = {:title => 'Bob',
                  :message => 'Second test Peepp'}

    it 'returns all users' do
      Peep.create(test_peep1)
      Peep.create(test_peep2)
      peep = Peep.all
      expect(peep.length).to eq 2

    end
  end
end