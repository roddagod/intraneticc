require 'test_helper'

class IccEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @icc_event = icc_events(:one)
  end

  test "should get index" do
    get icc_events_url
    assert_response :success
  end

  test "should get new" do
    get new_icc_event_url
    assert_response :success
  end

  test "should create icc_event" do
    assert_difference('IccEvent.count') do
      post icc_events_url, params: { icc_event: { name: @icc_event.name } }
    end

    assert_redirected_to icc_event_url(IccEvent.last)
  end

  test "should show icc_event" do
    get icc_event_url(@icc_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_icc_event_url(@icc_event)
    assert_response :success
  end

  test "should update icc_event" do
    patch icc_event_url(@icc_event), params: { icc_event: { name: @icc_event.name } }
    assert_redirected_to icc_event_url(@icc_event)
  end

  test "should destroy icc_event" do
    assert_difference('IccEvent.count', -1) do
      delete icc_event_url(@icc_event)
    end

    assert_redirected_to icc_events_url
  end
end
