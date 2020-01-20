feature "So that I can let people know what I am doing" do
  it 'I want to post a message to chitter' do
    visit '/'
    fill_in :title, with: "I peeped!"
    fill_in :content, with: "Oh yes I did!"
    click_button "Peep"
    expect(page).to have_content("Oh yes I did!")
  end
end
