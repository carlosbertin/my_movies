require 'test_helper'

class DirectorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get director_index_url
    assert_response :success
  end

  test "should get show" do
    get director_show_url
    assert_response :success
  end

  test "should get new" do
    get director_new_url
    assert_response :success
  end

  test "should get create" do
    get director_create_url
    assert_response :success
  end

end