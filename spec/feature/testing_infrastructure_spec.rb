feature "Testing infrastructure" do
  scenario "Loads with index page" do
    visit("/")
    expect(page).to have_content "Bookmark Manager" 
  end
end

feature "Viewing bookmarks" do 
  scenario "Be able to view saved bookmarks" do 

    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create('Makers', 'http://www.makersacademy.com/')
    Bookmark.create('Destroy', 'http://www.destroyallsoftware.com')
    Bookmark.create('Google', 'http://www.google.com/')
    
    visit ('/bookmarks') 
    
    expect(page).to have_link "Makers", href: "http://www.makersacademy.com/"
    expect(page).to have_link "Destroy", href: "http://www.destroyallsoftware.com"
    expect(page).to have_link "Google", href: "http://www.google.com/"
  end 
end 
