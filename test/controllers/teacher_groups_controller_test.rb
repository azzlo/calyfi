require 'test_helper'

class TeacherGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_group = teacher_groups(:one)
  end

  test "should get index" do
    get teacher_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_group_url
    assert_response :success
  end

  test "should create teacher_group" do
    assert_difference('TeacherGroup.count') do
      post teacher_groups_url, params: { teacher_group: { group_id: @teacher_group.group_id, period: @teacher_group.period, subject: @teacher_group.subject, teacher_id: @teacher_group.teacher_id } }
    end

    assert_redirected_to teacher_group_url(TeacherGroup.last)
  end

  test "should show teacher_group" do
    get teacher_group_url(@teacher_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_group_url(@teacher_group)
    assert_response :success
  end

  test "should update teacher_group" do
    patch teacher_group_url(@teacher_group), params: { teacher_group: { group_id: @teacher_group.group_id, period: @teacher_group.period, subject: @teacher_group.subject, teacher_id: @teacher_group.teacher_id } }
    assert_redirected_to teacher_group_url(@teacher_group)
  end

  test "should destroy teacher_group" do
    assert_difference('TeacherGroup.count', -1) do
      delete teacher_group_url(@teacher_group)
    end

    assert_redirected_to teacher_groups_url
  end
end
