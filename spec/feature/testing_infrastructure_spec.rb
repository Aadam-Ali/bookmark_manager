feature "Testing infrastructure" do
  scenario "Loads with index page" do
    visit("/")
    expect(page).to have_content "Bookmark Manager" 
  end
end


feature "Viewing bookmarks" do 
  scenario "Be able to view saved bookmarks" do 
    visit ('/bookmarks') 
    expect(page).to have_content 'www.github.com'
    expect(page).to have_content 'www.slack.com'
  end 
end 


