require_relative 'connect_to_db'

class Peep
  def initialize(id:, title:, message:)
    @id = id
    @title = title
    @content = message
  end

  def self.all
    peeps = DBConnection.query("SELECT * FROM peeps;")
    peeps.map do |peep|
      Peep.new(
          id: peep['id'],
          title: peep['title'],
          message: peep['message']
      )
    end
  end

  def self.create(params)
    DBConnection.query("INSERT INTO peeps (title, message) VALUES('#{params['title']}', '#{params['message']}');")
  end

  attr_reader :id, :title, :content
end