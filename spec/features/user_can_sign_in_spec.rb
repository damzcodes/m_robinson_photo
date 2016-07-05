feature 'An authorised user signs in' do
  scenario 'a user submits a message' do
    when_an_authorised_user_gives_valid_credentials
    then_they_should_be_signed_in
  end

  def when_an_authorised_user_gives_valid_credentials
    visit login_path
    mum
    fill_in :email, with: mum.email
    fill_in :password, with: mum.password
    click 'Log in'
  end

  def then_they_should_be_signed_in
    expect(page).to have_content 'You are signed in'
  end

  let(:mum) { create :user, email: 'mum@test.com', password: 'password'}
end
