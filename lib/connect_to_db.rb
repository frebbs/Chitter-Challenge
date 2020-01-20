require 'pg'

class DBConnection
  def self.setup(dbe)
    @connection = PG.connect(dbname: db)
  end

  def self.connection
    @connection
  end

  def self.query(sql)
    @connection.exec(sql)
  end
end
