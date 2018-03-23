require "application_system_test_case"

class ThumbnailsTest < ApplicationSystemTestCase
  setup do
    @thumbnail = thumbnails(:one)
  end

  test "visiting the index" do
    visit thumbnails_url
    assert_selector "h1", text: "Thumbnails"
  end

  test "creating a Thumbnail" do
    visit thumbnails_url
    click_on "New Thumbnail"

    fill_in "Body", with: @thumbnail.body
    fill_in "Main Image", with: @thumbnail.main_image
    fill_in "Thumb Image", with: @thumbnail.thumb_image
    fill_in "Title", with: @thumbnail.title
    click_on "Create Thumbnail"

    assert_text "Thumbnail was successfully created"
    click_on "Back"
  end

  test "updating a Thumbnail" do
    visit thumbnails_url
    click_on "Edit", match: :first

    fill_in "Body", with: @thumbnail.body
    fill_in "Main Image", with: @thumbnail.main_image
    fill_in "Thumb Image", with: @thumbnail.thumb_image
    fill_in "Title", with: @thumbnail.title
    click_on "Update Thumbnail"

    assert_text "Thumbnail was successfully updated"
    click_on "Back"
  end

  test "destroying a Thumbnail" do
    visit thumbnails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thumbnail was successfully destroyed"
  end
end
