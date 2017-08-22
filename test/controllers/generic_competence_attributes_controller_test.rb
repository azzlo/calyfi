require 'test_helper'

class GenericCompetenceAttributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generic_competence_attribute = generic_competence_attributes(:one)
  end

  test "should get index" do
    get generic_competence_attributes_url
    assert_response :success
  end

  test "should get new" do
    get new_generic_competence_attribute_url
    assert_response :success
  end

  test "should create generic_competence_attribute" do
    assert_difference('GenericCompetenceAttribute.count') do
      post generic_competence_attributes_url, params: { generic_competence_attribute: { description: @generic_competence_attribute.description, generic_competence_id: @generic_competence_attribute.generic_competence_id, number: @generic_competence_attribute.number } }
    end

    assert_redirected_to generic_competence_attribute_url(GenericCompetenceAttribute.last)
  end

  test "should show generic_competence_attribute" do
    get generic_competence_attribute_url(@generic_competence_attribute)
    assert_response :success
  end

  test "should get edit" do
    get edit_generic_competence_attribute_url(@generic_competence_attribute)
    assert_response :success
  end

  test "should update generic_competence_attribute" do
    patch generic_competence_attribute_url(@generic_competence_attribute), params: { generic_competence_attribute: { description: @generic_competence_attribute.description, generic_competence_id: @generic_competence_attribute.generic_competence_id, number: @generic_competence_attribute.number } }
    assert_redirected_to generic_competence_attribute_url(@generic_competence_attribute)
  end

  test "should destroy generic_competence_attribute" do
    assert_difference('GenericCompetenceAttribute.count', -1) do
      delete generic_competence_attribute_url(@generic_competence_attribute)
    end

    assert_redirected_to generic_competence_attributes_url
  end
end
