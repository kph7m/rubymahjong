require "application_system_test_case"

class WonCountsTest < ApplicationSystemTestCase
  setup do
    @won_count = won_counts(:one)
  end

  test "visiting the index" do
    visit won_counts_url
    assert_selector "h1", text: "Won Counts"
  end

  test "creating a Won count" do
    visit won_counts_url
    click_on "New Won Count"

    fill_in "Name", with: @won_count.name
    fill_in "Woncount", with: @won_count.wonCount
    click_on "Create Won count"

    assert_text "Won count was successfully created"
    click_on "Back"
  end

  test "updating a Won count" do
    visit won_counts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @won_count.name
    fill_in "Woncount", with: @won_count.wonCount
    click_on "Update Won count"

    assert_text "Won count was successfully updated"
    click_on "Back"
  end

  test "destroying a Won count" do
    visit won_counts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Won count was successfully destroyed"
  end
end
