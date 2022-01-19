require 'pg'

def clear_db 
  p "Clearing Database"
  conn = PG.connect(dbname: 'bookmark_manager_test')
  conn.exec("TRUNCATE TABLE bookmarks;")
end
