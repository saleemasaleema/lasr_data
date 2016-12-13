require 'test_helper'

class TakensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taken = takens(:one)
  end

  test "should get index" do
    get takens_url
    assert_response :success
  end

  test "should get new" do
    get new_taken_url
    assert_response :success
  end

  test "should create taken" do
    assert_difference('Taken.count') do
      post takens_url, params: { taken: { course_id: @taken.course_id, student_id: @taken.student_id } }
    end

    assert_redirected_to taken_url(Taken.last)
  end

  test "should show taken" do
    get taken_url(@taken)
    assert_response :success
  end

  test "should get edit" do
    get edit_taken_url(@taken)
    assert_response :success
  end

  test "should update taken" do
    patch taken_url(@taken), params: { taken: { course_id: @taken.course_id, student_id: @taken.student_id } }
    assert_redirected_to taken_url(@taken)
  end

  test "should destroy taken" do
    assert_difference('Taken.count', -1) do
      delete taken_url(@taken)
    end

    assert_redirected_to takens_url
  end
end
