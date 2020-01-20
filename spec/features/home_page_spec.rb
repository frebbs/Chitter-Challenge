feature 'HomePage Works' do
  scenario 'Visiting homepage returns content' do
    visit '/'
    expect(page).to have_content("Wel3cfdgfdgsdfgome to Chitter")
  end
end