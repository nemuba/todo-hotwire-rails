# frozen_string_literal: true

require "test_helper"

class CompletedControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get completed_update_url
    assert_response :success
  end
end
