feature "I want to sign up for Chitter" do
  it 'Shows the home page' do
    visit '/home'
    expect(page).to have_content("My previous peeps")
  end

  it 'Shows the create account page' do
    visit '/home/signup'
    expect(page).to have_content("Fill out the form to peep with a name")
  end

  it 'creates a new user account' do
    visit '/'
    click_link "Create Account"
    fill_in :email, with: "an_email@future.uk"
    fill_in :password, with: "shhhdonttell"
    fill_in :password2, with: "shhhdonttell"
    fill_in :f_name, with: "Lord"
    fill_in :l_name, with: "Aaron"
    click_button "Submit"
    expect(page).to have_content("Hello Lord Aaron")
  end
end
