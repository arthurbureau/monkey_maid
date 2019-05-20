require 'test_helper'

class MonkeysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get monkeys_index_url
    assert_response :success
  end

  test "should get show" do
    get monkeys_show_url
    assert_response :success
  end

  test "should get new" do
    get monkeys_new_url
    assert_response :success
  end

  test "should get create" do
    get monkeys_create_url
    assert_response :success
  end

end
