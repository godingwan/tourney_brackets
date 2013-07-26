module AuthenticationHelper
  def sign_in_as(user)
    visit '/users/sign_in'

    fill_in "Login", :with => user.username
    fill_in "Password", :with => user.password
    click_button "Sign in"
  end
end
