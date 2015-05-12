require 'test_helper'

class HstartersControllerTest < ActionController::TestCase
  setup do
    @hstarter = hstarters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hstarters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hstarter" do
    assert_difference('Hstarter.count') do
      post :create, hstarter: { eventschedule_ID: @hstarter.eventschedule_ID, firstlast: @hstarter.firstlast, inning_entered: @hstarter.inning_entered, notes: @hstarter.notes, player_position: @hstarter.player_position, team: @hstarter.team, visitor_shortname: @hstarter.visitor_shortname }
    end

    assert_redirected_to hstarter_path(assigns(:hstarter))
  end

  test "should show hstarter" do
    get :show, id: @hstarter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hstarter
    assert_response :success
  end

  test "should update hstarter" do
    patch :update, id: @hstarter, hstarter: { eventschedule_ID: @hstarter.eventschedule_ID, firstlast: @hstarter.firstlast, inning_entered: @hstarter.inning_entered, notes: @hstarter.notes, player_position: @hstarter.player_position, team: @hstarter.team, visitor_shortname: @hstarter.visitor_shortname }
    assert_redirected_to hstarter_path(assigns(:hstarter))
  end

  test "should destroy hstarter" do
    assert_difference('Hstarter.count', -1) do
      delete :destroy, id: @hstarter
    end

    assert_redirected_to hstarters_path
  end
end
