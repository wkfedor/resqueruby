require "test_helper"

class TestqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testq = testqs(:one)
  end

  test "should get index" do
    get testqs_url
    assert_response :success
  end

  test "should get new" do
    get new_testq_url
    assert_response :success
  end

  test "should create testq" do
    assert_difference("Testq.count") do
      post testqs_url, params: { testq: { commentq: @testq.commentq, countq: @testq.countq, nowq: @testq.nowq } }
    end

    assert_redirected_to testq_url(Testq.last)
  end

  test "should show testq" do
    get testq_url(@testq)
    assert_response :success
  end

  test "should get edit" do
    get edit_testq_url(@testq)
    assert_response :success
  end

  test "should update testq" do
    patch testq_url(@testq), params: { testq: { commentq: @testq.commentq, countq: @testq.countq, nowq: @testq.nowq } }
    assert_redirected_to testq_url(@testq)
  end

  test "should destroy testq" do
    assert_difference("Testq.count", -1) do
      delete testq_url(@testq)
    end

    assert_redirected_to testqs_url
  end
end
