require 'test_helper'

class KeywordlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @keywordlist = keywordlists(:one)
  end

  test "should get index" do
    get keywordlists_url
    assert_response :success
  end

  test "should get new" do
    get new_keywordlist_url
    assert_response :success
  end

  test "should create keywordlist" do
    assert_difference('Keywordlist.count') do
      post keywordlists_url, params: { keywordlist: { greeting_id: @keywordlist.greeting_id, keyword_id: @keywordlist.keyword_id, user_id: @keywordlist.user_id } }
    end

    assert_redirected_to keywordlist_url(Keywordlist.last)
  end

  test "should show keywordlist" do
    get keywordlist_url(@keywordlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_keywordlist_url(@keywordlist)
    assert_response :success
  end

  test "should update keywordlist" do
    patch keywordlist_url(@keywordlist), params: { keywordlist: { greeting_id: @keywordlist.greeting_id, keyword_id: @keywordlist.keyword_id, user_id: @keywordlist.user_id } }
    assert_redirected_to keywordlist_url(@keywordlist)
  end

  test "should destroy keywordlist" do
    assert_difference('Keywordlist.count', -1) do
      delete keywordlist_url(@keywordlist)
    end

    assert_redirected_to keywordlists_url
  end
end
