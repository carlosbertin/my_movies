require 'test_helper'

class ActorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get actor_index_url
    assert_response :success
  end

  test "should get show" do
    get actor_show_url
    assert_response :success
  end

  test "should get new" do
    get actor_new_url
    assert_response :success
  end

  test "should get create" do
    get actor_create_url
    assert_response :success
  end

end
