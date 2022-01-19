require 'bookmark'

describe Bookmark do 
  it 'returns a list of bookmarks' do
    bookmark = Bookmark.create('Makers', 'http://www.makersacademy.com/')
    Bookmark.create('Destroy', 'http://www.destroyallsoftware.com')
    Bookmark.create('Google', 'http://www.google.com/')

    bookmarks = Bookmark.all

    expect(bookmarks.length).to eq 3
    expect(bookmarks.first).to be_a Bookmark
    expect(bookmarks.first.id).to eq bookmark.id
    expect(bookmarks.first.title).to eq bookmark.title
    expect(bookmarks.first.url).to eq bookmark.url
  end 

  it "creates a bookmark" do
    bookmark = Bookmark.create('Test', 'www.test.com')
    persisted_data = persisted_data(bookmark.id)

    expect(bookmark.id).to eq persisted_data['id']
    expect(bookmark.title).to eq 'Test'
    expect(bookmark.url).to eq 'www.test.com'
  end

  it "deletes a bookmark" do
    bookmark = bookmark = Bookmark.create('Test', 'www.test.com')
    Bookmark.delete(bookmark.id)

    expect(Bookmark.all.length).to eq 0
  end
end 
