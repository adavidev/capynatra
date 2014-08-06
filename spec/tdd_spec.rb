require "spec_helper"

describe "the signin process", :type => :feature do
  it "signs me in" do
    visit '/main'
    expect(page).to have_content 'hello world'
  end
end
