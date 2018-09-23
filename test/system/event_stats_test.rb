require "application_system_test_case"

class EventStatsTest < ApplicationSystemTestCase
  setup do
    @event_stat = event_stats(:one)
  end

  test "visiting the index" do
    visit event_stats_url
    assert_selector "h1", text: "Event Stats"
  end

  test "creating a Event stat" do
    visit event_stats_url
    click_on "New Event Stat"

    fill_in "Conducteur", with: @event_stat.conducteur
    fill_in "Event Date", with: @event_stat.event_date
    fill_in "Icc Event", with: @event_stat.icc_event_id
    fill_in "Moderateur", with: @event_stat.moderateur
    fill_in "Name", with: @event_stat.name
    fill_in "Nb Enfants", with: @event_stat.nb_enfants
    fill_in "Nb Nonstar F", with: @event_stat.nb_nonstar_f
    fill_in "Nb Nonstar H", with: @event_stat.nb_nonstar_h
    fill_in "Nb Star F", with: @event_stat.nb_star_f
    fill_in "Nb Star H", with: @event_stat.nb_star_h
    fill_in "Orateur", with: @event_stat.orateur
    click_on "Create Event stat"

    assert_text "Event stat was successfully created"
    click_on "Back"
  end

  test "updating a Event stat" do
    visit event_stats_url
    click_on "Edit", match: :first

    fill_in "Conducteur", with: @event_stat.conducteur
    fill_in "Event Date", with: @event_stat.event_date
    fill_in "Icc Event", with: @event_stat.icc_event_id
    fill_in "Moderateur", with: @event_stat.moderateur
    fill_in "Name", with: @event_stat.name
    fill_in "Nb Enfants", with: @event_stat.nb_enfants
    fill_in "Nb Nonstar F", with: @event_stat.nb_nonstar_f
    fill_in "Nb Nonstar H", with: @event_stat.nb_nonstar_h
    fill_in "Nb Star F", with: @event_stat.nb_star_f
    fill_in "Nb Star H", with: @event_stat.nb_star_h
    fill_in "Orateur", with: @event_stat.orateur
    click_on "Update Event stat"

    assert_text "Event stat was successfully updated"
    click_on "Back"
  end

  test "destroying a Event stat" do
    visit event_stats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event stat was successfully destroyed"
  end
end
