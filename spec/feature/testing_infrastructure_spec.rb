feature "Testing infrastructure" do
  scenario "Loads with index page" do
    visit("/")
    expect(page).to have_content "Bookmark Manager"
  end
end