require 'test_helper'

class ThumbnailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thumbnail = thumbnails(:one)
  end

  test "should get index" do
    get thumbnails_url
    assert_response :success
  end

  test "should get new" do
    get new_thumbnail_url
    assert_response :success
  end

  test "should create thumbnail" do
    assert_difference('Thumbnail.count') do
      post thumbnails_url, params: { thumbnail: { body: @thumbnail.body, main_image: @thumbnail.main_image, thumb_image: @thumbnail.thumb_image, title: @thumbnail.title } }
    end

    assert_redirected_to thumbnail_url(Thumbnail.last)
  end

  test "should show thumbnail" do
    get thumbnail_url(@thumbnail)
    assert_response :success
  end

  test "should get edit" do
    get edit_thumbnail_url(@thumbnail)
    assert_response :success
  end

  test "should update thumbnail" do
    patch thumbnail_url(@thumbnail), params: { thumbnail: { body: @thumbnail.body, main_image: @thumbnail.main_image, thumb_image: @thumbnail.thumb_image, title: @thumbnail.title } }
    assert_redirected_to thumbnail_url(@thumbnail)
  end

  test "should destroy thumbnail" do
    assert_difference('Thumbnail.count', -1) do
      delete thumbnail_url(@thumbnail)
    end

    assert_redirected_to thumbnails_url
  end
end
