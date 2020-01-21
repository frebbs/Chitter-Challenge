require './lib/user_model'
require './lib/connect_to_db'
require_relative 'db_helper'

describe User do
  context '.create' do
    it 'creates a new user' do
      test_user = {:username => 'Aaron',
                   :email => 'te1st@gmail.com',
                   :f_name => 'Lord',
                   :l_name => 'Aaron'}
      user = User.create(test_user)
      persisted_data = persisted_data(id: user.id, table: 'users')
      expect(user).to be_a User
      expect(user.id).to eq persisted_data.first['id']
    end
  end
end

