require "application_system_test_case"

class EnemiesTest < ApplicationSystemTestCase
  setup do
    @enemy = enemies(:one)
  end

  test "visiting the index" do
    visit enemies_url
    assert_selector "h1", text: "Enemies"
  end

  test "should create enemy" do
    visit enemies_url
    click_on "New enemy"

    fill_in "Date of enemy", with: @enemy.date_of_enemy
    fill_in "Name", with: @enemy.name
    click_on "Create Enemy"

    assert_text "Enemy was successfully created"
    click_on "Back"
  end

  test "should update Enemy" do
    visit enemy_url(@enemy)
    click_on "Edit this enemy", match: :first

    fill_in "Date of enemy", with: @enemy.date_of_enemy
    fill_in "Name", with: @enemy.name
    click_on "Update Enemy"

    assert_text "Enemy was successfully updated"
    click_on "Back"
  end

  test "should destroy Enemy" do
    visit enemy_url(@enemy)
    click_on "Destroy this enemy", match: :first

    assert_text "Enemy was successfully destroyed"
  end
end
