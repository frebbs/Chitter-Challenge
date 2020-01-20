require 'timecop'

feature "So that I can see what others are saying" do
  it 'I want to see all peeps in reverse chronological order' do
    visit '/'
    fill_in :title, with: "I peeped!"
    fill_in :message, with: "Oh yes I did!"
    click_button "Peep"
    Timecop.travel(DateTime.now + 0.25) do
      fill_in :title, with: "My second peep!"
      fill_in :message, with: "This is a new post, its a little longer!"
      click_button "Peep"
    end

    expect(page.all(".title").map(&:text)).to eq(["My second peep!", "I peeped!"])
  end
end
