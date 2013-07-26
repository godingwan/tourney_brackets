require 'spec_helper'

feature 'As a user, I must be able to create a tournament' do
  scenario 'I must see a create tournament link' do
    user = FactoryGirl.create(:user)

    sign_in_as(user)

    expect(page).to have_link("Create Tournament")
  end
end
