require 'test_helper'

class CompetencePeriodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competence_period = competence_periods(:one)
  end

  test "should get index" do
    get competence_periods_url
    assert_response :success
  end

  test "should get new" do
    get new_competence_period_url
    assert_response :success
  end

  test "should create competence_period" do
    assert_difference('CompetencePeriod.count') do
      post competence_periods_url, params: { competence_period: { description: @competence_period.description, end_at: @competence_period.end_at, start_at: @competence_period.start_at, teacher_group_id: @competence_period.teacher_group_id, title: @competence_period.title } }
    end

    assert_redirected_to competence_period_url(CompetencePeriod.last)
  end

  test "should show competence_period" do
    get competence_period_url(@competence_period)
    assert_response :success
  end

  test "should get edit" do
    get edit_competence_period_url(@competence_period)
    assert_response :success
  end

  test "should update competence_period" do
    patch competence_period_url(@competence_period), params: { competence_period: { description: @competence_period.description, end_at: @competence_period.end_at, start_at: @competence_period.start_at, teacher_group_id: @competence_period.teacher_group_id, title: @competence_period.title } }
    assert_redirected_to competence_period_url(@competence_period)
  end

  test "should destroy competence_period" do
    assert_difference('CompetencePeriod.count', -1) do
      delete competence_period_url(@competence_period)
    end

    assert_redirected_to competence_periods_url
  end
end
