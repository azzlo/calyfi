require 'test_helper'

class EvaluationPeriodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluation_period = evaluation_periods(:one)
  end

  test "should get index" do
    get evaluation_periods_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluation_period_url
    assert_response :success
  end

  test "should create evaluation_period" do
    assert_difference('EvaluationPeriod.count') do
      post evaluation_periods_url, params: { evaluation_period: { end_at: @evaluation_period.end_at, start_at: @evaluation_period.start_at } }
    end

    assert_redirected_to evaluation_period_url(EvaluationPeriod.last)
  end

  test "should show evaluation_period" do
    get evaluation_period_url(@evaluation_period)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluation_period_url(@evaluation_period)
    assert_response :success
  end

  test "should update evaluation_period" do
    patch evaluation_period_url(@evaluation_period), params: { evaluation_period: { end_at: @evaluation_period.end_at, start_at: @evaluation_period.start_at } }
    assert_redirected_to evaluation_period_url(@evaluation_period)
  end

  test "should destroy evaluation_period" do
    assert_difference('EvaluationPeriod.count', -1) do
      delete evaluation_period_url(@evaluation_period)
    end

    assert_redirected_to evaluation_periods_url
  end
end
