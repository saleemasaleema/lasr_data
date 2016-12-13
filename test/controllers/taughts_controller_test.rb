require 'test_helper'

class TaughtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taught = taughts(:one)
  end

  test "should get index" do
    get taughts_url
    assert_response :success
  end

  test "should get new" do
    get new_taught_url
    assert_response :success
  end

  test "should create taught" do
    assert_difference('Taught.count') do
      post taughts_url, params: { taught: { course_id: @taught.course_id, instructorr_id: @taught.instructorr_id } }
    end

    assert_redirected_to taught_url(Taught.last)
  end

  test "should show taught" do
    get taught_url(@taught)
    assert_response :success
  end

  test "should get edit" do
    get edit_taught_url(@taught)
    assert_response :success
  end

  test "should update taught" do
    patch taught_url(@taught), params: { taught: { course_id: @taught.course_id, instructorr_id: @taught.instructorr_id } }
    assert_redirected_to taught_url(@taught)
  end

  test "should destroy taught" do
    assert_difference('Taught.count', -1) do
      delete taught_url(@taught)
    end

    assert_redirected_to taughts_url
  end
end
