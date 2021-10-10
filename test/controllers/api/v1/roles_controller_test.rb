require "test_helper"

class Api::V1::RolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_role = api_v1_roles(:one)
  end

  test "should get index" do
    get api_v1_roles_url, as: :json
    assert_response :success
  end

  test "should create api_v1_role" do
    assert_difference('Api::V1::Role.count') do
      post api_v1_roles_url, params: { api_v1_role: { name: @api_v1_role.name } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_role" do
    get api_v1_role_url(@api_v1_role), as: :json
    assert_response :success
  end

  test "should update api_v1_role" do
    patch api_v1_role_url(@api_v1_role), params: { api_v1_role: { name: @api_v1_role.name } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_role" do
    assert_difference('Api::V1::Role.count', -1) do
      delete api_v1_role_url(@api_v1_role), as: :json
    end

    assert_response 204
  end
end
