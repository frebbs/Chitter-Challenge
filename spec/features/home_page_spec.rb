feature 'HomePage Works' do
  scenario 'Visiting homepage returns content' do
    visit '/'
    expect(page).to have_content("Welcome to Chitter")
  end
end