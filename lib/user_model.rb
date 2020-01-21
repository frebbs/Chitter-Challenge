require_relative 'connect_to_db'

class User
  def initialize(id:,
                 username:,
                 email:,
                 f_name:,
                 l_name:,
                 created_at:
  )

    @id = id
    @username = username
    @email = email
    @f_name = f_name
    @l_name = l_name
    @created_at = created_at
  end

  def self.find_user(username)
    result = DBConnection.query("SELECT * FROM users WHERE username = '#{username}'")
    User.new(id: result[0]['id'], username: result[0]['username'], email: result[0]['email'], f_name: result[0]['f_name'], l_name: result[0]['l_name'], created_at: result[0]['created_at'])

  end

  def self.create(params)
    DBConnection.query("INSERT INTO users (username, email, password, f_name, l_name) VALUES('#{params['username']}', '#{params['email']}', '#{params['password']}', '#{params['f_name']}', '#{params['l_name']}');")
  end

  attr_reader :id, :username, :email, :created_at, :f_name, :l_name
end