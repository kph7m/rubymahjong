require 'test_helper'

class WonCountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @won_count = won_counts(:one)
  end

  test "should get index" do
    get won_counts_url
    assert_response :success
  end

  test "should get new" do
    get new_won_count_url
    assert_response :success
  end

  test "should create won_count" do
    assert_difference('WonCount.count') do
      post won_counts_url, params: { won_count: { name: @won_count.name, wonCount: @won_count.wonCount } }
    end

    assert_redirected_to won_count_url(WonCount.last)
  end

  test "should show won_count" do
    get won_count_url(@won_count)
    assert_response :success
  end

  test "should get edit" do
    get edit_won_count_url(@won_count)
    assert_response :success
  end

  test "should update won_count" do
    patch won_count_url(@won_count), params: { won_count: { name: @won_count.name, wonCount: @won_count.wonCount } }
    assert_redirected_to won_count_url(@won_count)
  end

  test "should destroy won_count" do
    assert_difference('WonCount.count', -1) do
      delete won_count_url(@won_count)
    end

    assert_redirected_to won_counts_url
  end
end
