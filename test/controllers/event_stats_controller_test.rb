require 'test_helper'

class EventStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_stat = event_stats(:one)
  end

  test "should get index" do
    get event_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_event_stat_url
    assert_response :success
  end

  test "should create event_stat" do
    assert_difference('EventStat.count') do
      post event_stats_url, params: { event_stat: { conducteur: @event_stat.conducteur, event_date: @event_stat.event_date, icc_event_id: @event_stat.icc_event_id, moderateur: @event_stat.moderateur, name: @event_stat.name, nb_enfants: @event_stat.nb_enfants, nb_nonstar_f: @event_stat.nb_nonstar_f, nb_nonstar_h: @event_stat.nb_nonstar_h, nb_star_f: @event_stat.nb_star_f, nb_star_h: @event_stat.nb_star_h, orateur: @event_stat.orateur } }
    end

    assert_redirected_to event_stat_url(EventStat.last)
  end

  test "should show event_stat" do
    get event_stat_url(@event_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_stat_url(@event_stat)
    assert_response :success
  end

  test "should update event_stat" do
    patch event_stat_url(@event_stat), params: { event_stat: { conducteur: @event_stat.conducteur, event_date: @event_stat.event_date, icc_event_id: @event_stat.icc_event_id, moderateur: @event_stat.moderateur, name: @event_stat.name, nb_enfants: @event_stat.nb_enfants, nb_nonstar_f: @event_stat.nb_nonstar_f, nb_nonstar_h: @event_stat.nb_nonstar_h, nb_star_f: @event_stat.nb_star_f, nb_star_h: @event_stat.nb_star_h, orateur: @event_stat.orateur } }
    assert_redirected_to event_stat_url(@event_stat)
  end

  test "should destroy event_stat" do
    assert_difference('EventStat.count', -1) do
      delete event_stat_url(@event_stat)
    end

    assert_redirected_to event_stats_url
  end
end
