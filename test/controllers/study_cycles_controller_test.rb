require 'test_helper'

class StudyCyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_cycle = study_cycles(:one)
  end

  test "should get index" do
    get study_cycles_url
    assert_response :success
  end

  test "should get new" do
    get new_study_cycle_url
    assert_response :success
  end

  test "should create study_cycle" do
    assert_difference('StudyCycle.count') do
      post study_cycles_url, params: { study_cycle: { end_at: @study_cycle.end_at, start_at: @study_cycle.start_at } }
    end

    assert_redirected_to study_cycle_url(StudyCycle.last)
  end

  test "should show study_cycle" do
    get study_cycle_url(@study_cycle)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_cycle_url(@study_cycle)
    assert_response :success
  end

  test "should update study_cycle" do
    patch study_cycle_url(@study_cycle), params: { study_cycle: { end_at: @study_cycle.end_at, start_at: @study_cycle.start_at } }
    assert_redirected_to study_cycle_url(@study_cycle)
  end

  test "should destroy study_cycle" do
    assert_difference('StudyCycle.count', -1) do
      delete study_cycle_url(@study_cycle)
    end

    assert_redirected_to study_cycles_url
  end
end
