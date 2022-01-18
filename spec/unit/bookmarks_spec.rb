require 'bookmarks'

describe Bookmarks do 
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmarks.create('http://www.makersacademy.com/')
    Bookmarks.create('http://www.destroyallsoftware.com')
    Bookmarks.create('http://www.google.com/')


    bookmarks = Bookmarks.all
    
    expect(bookmarks).to include "http://www.makersacademy.com/"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com/"
  end 

  it "creates a bookmark" do
    Bookmarks.create('www.test.com')
    expect(Bookmarks.all).to include ('www.test.com')
  end
end 