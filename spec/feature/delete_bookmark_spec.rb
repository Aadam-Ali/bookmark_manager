feature 'Delete bookmark' do
  scenario 'User deletes a bookmark' do
    Bookmark.create('Makers Academy', 'http://www.makersacademy.com')
    visit('/bookmarks')
    expect(page).to have_link 'Makers Academy', href: 'http://www.makersacademy.com'

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link 'Makers Academy', href: 'http://www.makersacademy.com'
  end
end