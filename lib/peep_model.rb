require_relative 'connect_to_db'

class Peep
  def initialize(id:, title:, message:, created_at:)
    @id = id
    @title = title
    @message = message
    @created_at = created_at
  end

  def self.all
    peeps = DBConnection.query("SELECT * FROM peeps;")
    peeps.map do |peep|
      Peep.new(
          id: peep['id'],
          title: peep['title'],
          message: peep['message'],
          created_at: peep['created_at']
      )
    end
  end

  def self.top_ten_reversed
    peeps = DBConnection.query("SELECT * FROM peeps ORDER BY created_at DESC LIMIT 5;")
    peeps.map do |peep|
      Peep.new(
          id: peep['id'],
          title: peep['title'],
          message: peep['message'],
          created_at: peep['created_at']
      )
    end
  end


  def self.create(params)
    DBConnection.query("INSERT INTO peeps (title, message) VALUES('#{params['title']}', '#{params['message']}');")
  end

  attr_reader :id, :title, :message, :created_at
end