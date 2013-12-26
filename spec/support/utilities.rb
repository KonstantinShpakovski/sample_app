include ApplicationHelper

def sign_in(user)
  visit signin_path
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  # Вход без Capybara.
  #cookies[:remember_token] = user.remember_token

end
def provide_valid_signup_data
  fill_in "Name",         with: "Example User"
  fill_in "Email",        with: "user@example.com"
  fill_in "Password",     with: "foobar"
  fill_in "Confirmation", with: "foobar"
end

def provide_new_valid_signup_data
  fill_in "Name",             with: new_name
  fill_in "Email",            with: new_email
  fill_in "Password",         with: user.password
  fill_in "Confirmation", with: user.password
end

RSpec::Matchers.define :have_no_error_message do
  match do |page|
    page.should have_no_selector('div.alert.alert-error')
  end
end


RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-error', text: message)
  end
end

RSpec::Matchers.define :have_success_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-success', text: message)
  end
end

