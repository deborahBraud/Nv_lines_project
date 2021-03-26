require "test_helper"

class ImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image = images(:one)
  end

  test "should get index" do
    get images_url
    assert_response :success
  end

  test "should get new" do
    get new_image_url
    assert_response :success
  end

  test "should create image" do
    assert_difference('Image.count') do
      post images_url, params: { image: { cellular_localization: @image.cellular_localization, image: @image.image, image_date: @image.image_date, image_legend: @image.image_legend, image_name: @image.image_name, lifecycle_stage: @image.lifecycle_stage, line_id: @image.line_id, microscopy_technique: @image.microscopy_technique, objective_used: @image.objective_used, pehnotype_id: @image.pehnotype_id, person_who_takes_image: @image.person_who_takes_image, tissu_localization: @image.tissu_localization } }
    end

    assert_redirected_to image_url(Image.last)
  end

  test "should show image" do
    get image_url(@image)
    assert_response :success
  end

  test "should get edit" do
    get edit_image_url(@image)
    assert_response :success
  end

  test "should update image" do
    patch image_url(@image), params: { image: { cellular_localization: @image.cellular_localization, image: @image.image, image_date: @image.image_date, image_legend: @image.image_legend, image_name: @image.image_name, lifecycle_stage: @image.lifecycle_stage, line_id: @image.line_id, microscopy_technique: @image.microscopy_technique, objective_used: @image.objective_used, pehnotype_id: @image.pehnotype_id, person_who_takes_image: @image.person_who_takes_image, tissu_localization: @image.tissu_localization } }
    assert_redirected_to image_url(@image)
  end

  test "should destroy image" do
    assert_difference('Image.count', -1) do
      delete image_url(@image)
    end

    assert_redirected_to images_url
  end
end
