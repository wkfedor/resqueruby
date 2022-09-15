require "application_system_test_case"

class TestqsTest < ApplicationSystemTestCase
  setup do
    @testq = testqs(:one)
  end

  test "visiting the index" do
    visit testqs_url
    assert_selector "h1", text: "Testqs"
  end

  test "should create testq" do
    visit testqs_url
    click_on "New testq"

    fill_in "Commentq", with: @testq.commentq
    fill_in "Countq", with: @testq.countq
    fill_in "Nowq", with: @testq.nowq
    click_on "Create Testq"

    assert_text "Testq was successfully created"
    click_on "Back"
  end

  test "should update Testq" do
    visit testq_url(@testq)
    click_on "Edit this testq", match: :first

    fill_in "Commentq", with: @testq.commentq
    fill_in "Countq", with: @testq.countq
    fill_in "Nowq", with: @testq.nowq
    click_on "Update Testq"

    assert_text "Testq was successfully updated"
    click_on "Back"
  end

  test "should destroy Testq" do
    visit testq_url(@testq)
    click_on "Destroy this testq", match: :first

    assert_text "Testq was successfully destroyed"
  end
end
