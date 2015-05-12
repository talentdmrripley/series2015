Parse.initialize("EV7LkRj0EtmE6K7qSfs5m4QwXcTf8v6DvnXTuF0g", "2NW7N4GWtoDroc23vw89dqOsj1A0OwWCLrhyBO0C");

var VStarter = Parse.Object.extend("VStarter");
var vStarter = new VStarter();
 
vStarter.set("EventSchedule_ID", "<%= @vstarter.eventschedule_ID %>");
vStarter.set("team_name", "<%= @vstarter.team %>");
vStarter.set("firstlast", "<%= @vstarter.firstlast %>");
vStarter.set("v_inning_enter", "<%= @vstarter.inning_entered %>");
vStarter.set("v_position", "<%= @vstarter.player_position %>");
vStarter.set("v_short_name", "<%= @vstarter.visitor_shortname %>");
vStarter.set("notes", "<%= @vstarter.notes %>");
 
vStarter.save(null, {
  success: function(vStarter) {
    // Execute any logic that should take place after the object is saved.
    alert('New object created with objectId: ' + vStarter.id);
  },
  error: function(vStarter, error) {
    // Execute any logic that should take place if the save fails.
    // error is a Parse.Error with an error code and message.
    alert('Failed to create new object, with error code: ' + error.message);
  }
});