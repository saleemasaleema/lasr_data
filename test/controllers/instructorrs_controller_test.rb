require 'test_helper'

class InstructorrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instructorr = instructorrs(:one)
  end

  test "should get index" do
    get instructorrs_url
    assert_response :success
  end

  test "should get new" do
    get new_instructorr_url
    assert_response :success
  end

  test "should create instructorr" do
    assert_difference('Instructorr.count') do
      post instructorrs_url, params: { instructorr: { Gender: @instructorr.Gender, i_address: @instructorr.i_address, i_name: @instructorr.i_name } }
    end

    assert_redirected_to instructorr_url(Instructorr.last)
  end

  test "should show instructorr" do
    get instructorr_url(@instructorr)
    assert_response :success
  end

  test "should get edit" do
    get edit_instructorr_url(@instructorr)
    assert_response :success
  end

  test "should update instructorr" do
    patch instructorr_url(@instructorr), params: { instructorr: { Gender: @instructorr.Gender, i_address: @instructorr.i_address, i_name: @instructorr.i_name } }
    assert_redirected_to instructorr_url(@instructorr)
  end

  test "should destroy instructorr" do
    assert_difference('Instructorr.count', -1) do
      delete instructorr_url(@instructorr)
    end

    assert_redirected_to instructorrs_url
  end
end
