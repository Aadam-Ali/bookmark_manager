feature "Testing infrastructure" do
  scenario "Loads with index page" do
    visit("/")
    expect(page).to have_content "Bookmark Manager" 
  end
end

feature "Viewing bookmarks" do 
  scenario "Be able to view saved bookmarks" do 

    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create('http://www.makersacademy.com/')
    Bookmark.create('http://www.destroyallsoftware.com')
    Bookmark.create('http://www.google.com/')
    
    visit ('/bookmarks') 
    
    expect(page).to have_content "http://www.makersacademy.com/"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com/"
  end 
end 
