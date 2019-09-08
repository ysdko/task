require 'test_helper'

class Task1sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get task1s_index_url
    assert_response :success
  end

  test "should get show" do
    get task1s_show_url
    assert_response :success
  end

  test "should get new" do
    get task1s_new_url
    assert_response :success
  end

  test "should get edit" do
    get task1s_edit_url
    assert_response :success
  end

end
