require 'pg'

class Bookmarks 

  def self.all
    if ENV['RACK_ENV'] == 'test'
      conn = PG.connect( dbname: 'bookmark_manager_test')
    else
      conn = PG.connect( dbname: 'bookmark_manager')
    end
    results = conn.exec('SELECT * FROM bookmarks;')
    results.map { |bookmark| bookmark['url'] }
  end 

end
