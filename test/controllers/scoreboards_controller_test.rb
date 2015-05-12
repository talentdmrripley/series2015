require 'test_helper'

class ScoreboardsControllerTest < ActionController::TestCase
  setup do
    @scoreboard = scoreboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scoreboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scoreboard" do
    assert_difference('Scoreboard.count') do
      post :create, scoreboard: { event_schedule_id: @scoreboard.event_schedule_id, eventschedule_ID: @scoreboard.eventschedule_ID, gamenotes: @scoreboard.gamenotes, h10: @scoreboard.h10, h11: @scoreboard.h11, h12: @scoreboard.h12, h13: @scoreboard.h13, h14: @scoreboard.h14, h15: @scoreboard.h15, h16: @scoreboard.h16, h17: @scoreboard.h17, h18: @scoreboard.h18, h19: @scoreboard.h19, h1: @scoreboard.h1, h20: @scoreboard.h20, h2: @scoreboard.h2, h3: @scoreboard.h3, h4: @scoreboard.h4, h5: @scoreboard.h5, h6: @scoreboard.h6, h7: @scoreboard.h7, h8: @scoreboard.h8, h9: @scoreboard.h9, herrs: @scoreboard.herrs, hhits: @scoreboard.hhits, home: @scoreboard.home, hruns: @scoreboard.hruns, title: @scoreboard.title, v10: @scoreboard.v10, v11: @scoreboard.v11, v12: @scoreboard.v12, v13: @scoreboard.v13, v14: @scoreboard.v14, v15: @scoreboard.v15, v16: @scoreboard.v16, v17: @scoreboard.v17, v18: @scoreboard.v18, v19: @scoreboard.v19, v1: @scoreboard.v1, v20: @scoreboard.v20, v2: @scoreboard.v2, v3: @scoreboard.v3, v4: @scoreboard.v4, v5: @scoreboard.v5, v6: @scoreboard.v6, v7: @scoreboard.v7, v8: @scoreboard.v8, v9: @scoreboard.v9, verrs: @scoreboard.verrs, vhits: @scoreboard.vhits, visitor: @scoreboard.visitor, vruns: @scoreboard.vruns }
    end

    assert_redirected_to scoreboard_path(assigns(:scoreboard))
  end

  test "should show scoreboard" do
    get :show, id: @scoreboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scoreboard
    assert_response :success
  end

  test "should update scoreboard" do
    patch :update, id: @scoreboard, scoreboard: { event_schedule_id: @scoreboard.event_schedule_id, eventschedule_ID: @scoreboard.eventschedule_ID, gamenotes: @scoreboard.gamenotes, h10: @scoreboard.h10, h11: @scoreboard.h11, h12: @scoreboard.h12, h13: @scoreboard.h13, h14: @scoreboard.h14, h15: @scoreboard.h15, h16: @scoreboard.h16, h17: @scoreboard.h17, h18: @scoreboard.h18, h19: @scoreboard.h19, h1: @scoreboard.h1, h20: @scoreboard.h20, h2: @scoreboard.h2, h3: @scoreboard.h3, h4: @scoreboard.h4, h5: @scoreboard.h5, h6: @scoreboard.h6, h7: @scoreboard.h7, h8: @scoreboard.h8, h9: @scoreboard.h9, herrs: @scoreboard.herrs, hhits: @scoreboard.hhits, home: @scoreboard.home, hruns: @scoreboard.hruns, title: @scoreboard.title, v10: @scoreboard.v10, v11: @scoreboard.v11, v12: @scoreboard.v12, v13: @scoreboard.v13, v14: @scoreboard.v14, v15: @scoreboard.v15, v16: @scoreboard.v16, v17: @scoreboard.v17, v18: @scoreboard.v18, v19: @scoreboard.v19, v1: @scoreboard.v1, v20: @scoreboard.v20, v2: @scoreboard.v2, v3: @scoreboard.v3, v4: @scoreboard.v4, v5: @scoreboard.v5, v6: @scoreboard.v6, v7: @scoreboard.v7, v8: @scoreboard.v8, v9: @scoreboard.v9, verrs: @scoreboard.verrs, vhits: @scoreboard.vhits, visitor: @scoreboard.visitor, vruns: @scoreboard.vruns }
    assert_redirected_to scoreboard_path(assigns(:scoreboard))
  end

  test "should destroy scoreboard" do
    assert_difference('Scoreboard.count', -1) do
      delete :destroy, id: @scoreboard
    end

    assert_redirected_to scoreboards_path
  end
end
