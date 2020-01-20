feature "I want to sign up for Chitter" do
  it 'Shows the home page' do
    visit '/home'
    expect(page).to have_content("Welcome to Chitter")
  end
end
