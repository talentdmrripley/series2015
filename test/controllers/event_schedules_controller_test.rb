require 'test_helper'

class EventSchedulesControllerTest < ActionController::TestCase
  setup do
    @event_schedule = event_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_schedule" do
    assert_difference('EventSchedule.count') do
      post :create, event_schedule: { event_date: @event_schedule.event_date, event_home: @event_schedule.event_home, event_site: @event_schedule.event_site, event_visitor: @event_schedule.event_visitor, objectID: @event_schedule.objectID }
    end

    assert_redirected_to event_schedule_path(assigns(:event_schedule))
  end

  test "should show event_schedule" do
    get :show, id: @event_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_schedule
    assert_response :success
  end

  test "should update event_schedule" do
    patch :update, id: @event_schedule, event_schedule: { event_date: @event_schedule.event_date, event_home: @event_schedule.event_home, event_site: @event_schedule.event_site, event_visitor: @event_schedule.event_visitor, objectID: @event_schedule.objectID }
    assert_redirected_to event_schedule_path(assigns(:event_schedule))
  end

  test "should destroy event_schedule" do
    assert_difference('EventSchedule.count', -1) do
      delete :destroy, id: @event_schedule
    end

    assert_redirected_to event_schedules_path
  end
end
