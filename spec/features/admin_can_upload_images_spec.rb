feature 'An admin user can upload images' do

  scenario 'an admin user uploads an image' do
    when_an_admin_user_uploads_an_image
    then_the_image_should_be_displayed
  end

  def when_an_admin_user_uploads_an_image
    visit new_image_path
    attach_file :image_image, "spec/fixtures/example.png"
    click_button "Submit"
  end

  def then_the_image_should_be_displayed
    binding.pry
    expect(page).to have_css("img[src='#{image_src}']")
  end

  let(:image_src) { Image.last.image.url }
end
