require 'test_helper'

class VstartersControllerTest < ActionController::TestCase
  setup do
    @vstarter = vstarters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vstarters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vstarter" do
    assert_difference('Vstarter.count') do
      post :create, vstarter: { eventschedule_ID: @vstarter.eventschedule_ID, firstlast: @vstarter.firstlast, inning_entered: @vstarter.inning_entered, notes: @vstarter.notes, player_position: @vstarter.player_position, team: @vstarter.team, visitor_shortname: @vstarter.visitor_shortname }
    end

    assert_redirected_to vstarter_path(assigns(:vstarter))
  end

  test "should show vstarter" do
    get :show, id: @vstarter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vstarter
    assert_response :success
  end

  test "should update vstarter" do
    patch :update, id: @vstarter, vstarter: { eventschedule_ID: @vstarter.eventschedule_ID, firstlast: @vstarter.firstlast, inning_entered: @vstarter.inning_entered, notes: @vstarter.notes, player_position: @vstarter.player_position, team: @vstarter.team, visitor_shortname: @vstarter.visitor_shortname }
    assert_redirected_to vstarter_path(assigns(:vstarter))
  end

  test "should destroy vstarter" do
    assert_difference('Vstarter.count', -1) do
      delete :destroy, id: @vstarter
    end

    assert_redirected_to vstarters_path
  end
end
