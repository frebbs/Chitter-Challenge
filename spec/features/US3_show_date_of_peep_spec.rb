feature "So that I can better appreciate the context of a peep" do
  it 'I want to see the time at which it was made' do
    visit '/'
    fill_in :title, with: "I peeped!"
    fill_in :message, with: "Oh yes I did!"
    click_button "Peep"

    expect(page).to have_content("Date created: 2020-")
  end
end
