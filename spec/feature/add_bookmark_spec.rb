feature 'Add new bookmark' do
  scenario 'User can create bookmark' do
    visit('/bookmarks/new')
    fill_in 'address', with: 'www.test.com'
    click_button ('Submit')
    expect(page).to have_content 'www.test.com'
  end
end
