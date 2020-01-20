require_relative 'connect_to_db'

class Peep
  def initialize(id:, title:, content:)
    @id = id
    @title = title
    @content = content
  end

  def self.create(params)
    DBConnection.query("INSERT INTO peeps (title, message) VALUES('#{params['title']}', '#{params['content']}');")
  end

  attr_reader :id, :title, :content

end