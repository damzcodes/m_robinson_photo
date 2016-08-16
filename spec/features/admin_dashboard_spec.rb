feature 'An admin user can see the dashboard' do
  scenario 'an admin user is logged in' do
    when_an_admin_user_has_logged_in
    then_they_should_see_the_dashboard
  end

  def when_an_admin_user_has_logged_in
    login_as mum
  end

  def then_they_should_see_the_dashboard
    visit admin_dashboard_path
    expect(page).to have_content "Hello Admin"
  end

  let(:mum) { create :user, email: 'mum@test.com', password: 'password'}
end
