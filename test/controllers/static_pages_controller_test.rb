require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # def setup
  #   @base_title = "Ruby on Rails Tutorial Sample App"
  # end

  # test "should get root" do
  #   # 以下はGETリクエストを投げる
  #   get root_url
  #   # GETリクエストが成功することを確認
  #   assert_response :success
  # end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    # タイトルが右記の文字列に指定した通りであることを確認
    # assert_select "title", "Home | #{@base_title}"
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    # assert_select "title", "Help | #{@base_title}"
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    # assert_select "title", "About | #{@base_title}"
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  # test "should get contact" do
  #   get static_pages_contact_url
  #   assert_response :success
  #   # assert_select "title", "Contact | #{@base_title}"
  #   assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  # end
end
