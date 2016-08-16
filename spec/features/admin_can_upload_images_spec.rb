feature 'An admin user can upload images' do
  scenario 'an admin user uploads an image' do
    when_an_admin_user_uploads_an_image
    then_the_image_should_be_displayed
  end

  def when_an_admin_user_uploads_an_image
    visit new_image_path
  end

  def then_the_image_should_be_displayed
    expect(page).to have_css("img[src='#{image_src}']")
  end
  let(:image_src) { Image.last.image.url }
end
