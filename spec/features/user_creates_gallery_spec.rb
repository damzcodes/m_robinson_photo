feature 'An admin user can create a photo gallery' do
  scenario 'a user creates a gallery page' do
    when_a_user_creates_a_gallery_page
    then_it_should_be_publicly_accessible
  end

  def when_a_user_creates_a_gallery_page
    visit new_gallery_path
  end

  def then_it_should_be_publicly_accessible
  end

end
