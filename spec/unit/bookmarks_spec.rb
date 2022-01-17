require 'bookmarks'

describe Bookmarks do 
  it 'returns a list of bookmarks' do 
    my_bookmarks = Bookmarks.all
    expect(my_bookmarks).to eq ['www.github.com', 'www.slack.com']
  end 
end 
