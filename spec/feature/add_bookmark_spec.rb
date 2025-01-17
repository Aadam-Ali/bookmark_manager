feature 'Add new bookmark' do
  scenario 'User can create bookmark' do
    visit('/bookmarks')
    click_link 'Add Bookmark'
    fill_in 'bookmark_title', with: 'Test Bookmark'
    fill_in 'bookmark_url', with: 'www.test.com'
    click_button ('Submit')   

    expect(page).to have_link 'Test Bookmark', href: 'www.test.com'
  end
end
