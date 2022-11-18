require "test_helper"

class AmicisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amici = amicis(:one)
  end

  test "should get index" do
    get amicis_url
    assert_response :success
  end

  test "should get new" do
    get new_amici_url
    assert_response :success
  end

  test "should create amici" do
    assert_difference("Amici.count") do
      post amicis_url, params: { amici: { adress: @amici.adress, date_of_birth: @amici.date_of_birth, email: @amici.email, name: @amici.name, phone: @amici.phone, years: @amici.years } }
    end

    assert_redirected_to amici_url(Amici.last)
  end

  test "should show amici" do
    get amici_url(@amici)
    assert_response :success
  end

  test "should get edit" do
    get edit_amici_url(@amici)
    assert_response :success
  end

  test "should update amici" do
    patch amici_url(@amici), params: { amici: { adress: @amici.adress, date_of_birth: @amici.date_of_birth, email: @amici.email, name: @amici.name, phone: @amici.phone, years: @amici.years } }
    assert_redirected_to amici_url(@amici)
  end

  test "should destroy amici" do
    assert_difference("Amici.count", -1) do
      delete amici_url(@amici)
    end

    assert_redirected_to amicis_url
  end
end
