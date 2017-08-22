require 'test_helper'

class GenericCompetencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generic_competence = generic_competences(:one)
  end

  test "should get index" do
    get generic_competences_url
    assert_response :success
  end

  test "should get new" do
    get new_generic_competence_url
    assert_response :success
  end

  test "should create generic_competence" do
    assert_difference('GenericCompetence.count') do
      post generic_competences_url, params: { generic_competence: { competition_category_id: @generic_competence.competition_category_id, name: @generic_competence.name, number: @generic_competence.number } }
    end

    assert_redirected_to generic_competence_url(GenericCompetence.last)
  end

  test "should show generic_competence" do
    get generic_competence_url(@generic_competence)
    assert_response :success
  end

  test "should get edit" do
    get edit_generic_competence_url(@generic_competence)
    assert_response :success
  end

  test "should update generic_competence" do
    patch generic_competence_url(@generic_competence), params: { generic_competence: { competition_category_id: @generic_competence.competition_category_id, name: @generic_competence.name, number: @generic_competence.number } }
    assert_redirected_to generic_competence_url(@generic_competence)
  end

  test "should destroy generic_competence" do
    assert_difference('GenericCompetence.count', -1) do
      delete generic_competence_url(@generic_competence)
    end

    assert_redirected_to generic_competences_url
  end
end
