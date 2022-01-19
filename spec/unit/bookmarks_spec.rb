require 'bookmark'

describe Bookmark do 
  it 'returns a list of bookmarks' do
    Bookmark.create('http://www.makersacademy.com/')
    Bookmark.create('http://www.destroyallsoftware.com')
    Bookmark.create('http://www.google.com/')

    bookmarks = Bookmark.all
    
    expect(bookmarks).to include "http://www.makersacademy.com/"
    expect(bookmarks).to include "http://www.destroyallsoftware.com"
    expect(bookmarks).to include "http://www.google.com/"
  end 

  it "creates a bookmark" do
    Bookmark.create('www.test.com')
    expect(Bookmark.all).to include ('www.test.com')
  end
end 
