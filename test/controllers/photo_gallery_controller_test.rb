require 'test_helper'

class PhotoGalleryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get photo_gallery_create_url
    assert_response :success
  end

  test "should get destroy" do
    get photo_gallery_destroy_url
    assert_response :success
  end

end
