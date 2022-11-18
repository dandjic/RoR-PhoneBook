require "application_system_test_case"

class AmicisTest < ApplicationSystemTestCase
  setup do
    @amici = amicis(:one)
  end

  test "visiting the index" do
    visit amicis_url
    assert_selector "h1", text: "Amicis"
  end

  test "should create amici" do
    visit amicis_url
    click_on "New amici"

    fill_in "Adress", with: @amici.adress
    fill_in "Date of birth", with: @amici.date_of_birth
    fill_in "Email", with: @amici.email
    fill_in "Name", with: @amici.name
    fill_in "Phone", with: @amici.phone
    fill_in "Years", with: @amici.years
    click_on "Create Amici"

    assert_text "Amici was successfully created"
    click_on "Back"
  end

  test "should update Amici" do
    visit amici_url(@amici)
    click_on "Edit this amici", match: :first

    fill_in "Adress", with: @amici.adress
    fill_in "Date of birth", with: @amici.date_of_birth
    fill_in "Email", with: @amici.email
    fill_in "Name", with: @amici.name
    fill_in "Phone", with: @amici.phone
    fill_in "Years", with: @amici.years
    click_on "Update Amici"

    assert_text "Amici was successfully updated"
    click_on "Back"
  end

  test "should destroy Amici" do
    visit amici_url(@amici)
    click_on "Destroy this amici", match: :first

    assert_text "Amici was successfully destroyed"
  end
end
