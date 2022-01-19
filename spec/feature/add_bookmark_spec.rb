feature 'Add new bookmark' do
  scenario 'User can create bookmark' do
    visit('/bookmark/new')
    fill_in 'bookmark_url', with: 'www.test.com'
    click_button ('Submit')
    expect(page).to have_content 'www.test.com'
  end
end
