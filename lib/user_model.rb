require_relative 'connect_to_db'

class User
  def initialize(id:,
                 username:,
                 email:,
                 password:,
                 f_name:,
                 l_name:,
                 created_at:
  )

    @id = id
    @username = username
    @email = email
    @password = password
    @f_name = f_name
    @l_name = l_name
    @created_at = created_at
  end

  def self.create(params)
    DBConnection.query("INSERT INTO users (username, email, password, first_name, last_name) VALUES('#{params['username']}', '#{params['email']}', '#{params['password']}', '#{params['f_name']}', '#{params['l_name']}');")
  end
end