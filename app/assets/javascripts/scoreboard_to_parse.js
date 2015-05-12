Parse.initialize("EV7LkRj0EtmE6K7qSfs5m4QwXcTf8v6DvnXTuF0g", "2NW7N4GWtoDroc23vw89dqOsj1A0OwWCLrhyBO0C");

var ParseScoreBoard = Parse.Object.extend("ParseScoreBoard");
var parseScoreBoard = new ParseScoreBoard();
 
parseScoreBoard.set("EventSchedule_ID", "<%= @scoreboard.eventschedule_ID %>");
parseScoreBoard.set("visitor", "<%= @scoreboard.visitor %>");
parseScoreBoard.set("home", "<%= @scoreboard.home %>");
parseScoreBoard.set("v1", "<%= @scoreboard.v1 %>");
parseScoreBoard.set("v2", "<%= @scoreboard.v2 %>");
parseScoreBoard.set("v3", "<%= @scoreboard.v3 %>");
parseScoreBoard.set("v4", "<%= @scoreboard.v4 %>");
parseScoreBoard.set("v5", "<%= @scoreboard.v5 %>");
parseScoreBoard.set("v6", "<%= @scoreboard.v6 %>");
parseScoreBoard.set("v7", "<%= @scoreboard.v7 %>");
parseScoreBoard.set("v8", "<%= @scoreboard.v8 %>");
parseScoreBoard.set("v9", "<%= @scoreboard.v9 %>");
parseScoreBoard.set("v10", "<%= @scoreboard.v10 %>");
parseScoreBoard.set("v11", "<%= @scoreboard.v11 %>");
parseScoreBoard.set("v12", "<%= @scoreboard.v12 %>");
parseScoreBoard.set("v13", "<%= @scoreboard.v13 %>");
parseScoreBoard.set("h1", "<%= @scoreboard.h1 %>");
parseScoreBoard.set("h2", "<%= @scoreboard.h2 %>");
parseScoreBoard.set("h3", "<%= @scoreboard.h3 %>");
parseScoreBoard.set("h4", "<%= @scoreboard.h4 %>");
parseScoreBoard.set("h5", "<%= @scoreboard.h5 %>");
parseScoreBoard.set("h6", "<%= @scoreboard.h6 %>");
parseScoreBoard.set("h7", "<%= @scoreboard.h7 %>");
parseScoreBoard.set("h8", "<%= @scoreboard.h8 %>");
parseScoreBoard.set("h9", "<%= @scoreboard.h9 %>");
parseScoreBoard.set("h10", "<%= @scoreboard.h10 %>");
parseScoreBoard.set("h11", "<%= @scoreboard.h11 %>");
parseScoreBoard.set("h12", "<%= @scoreboard.h12 %>");
parseScoreBoard.set("h13", "<%= @scoreboard.h13 %>");
parseScoreBoard.set("hruns", "<%= @scoreboard.hruns %>");
parseScoreBoard.set("hhits", "<%= @scoreboard.hhits %>");
parseScoreBoard.set("herrs", "<%= @scoreboard.herrs %>");

 parseScoreBoard.save(null, {
  success: function(parseScoreBoard) {
    // Execute any logic that should take place after the object is saved.
    alert('New object created with objectId: ' + parseScoreBoard.id);
  },
  error: function(parseScoreBoard, error) {
    // Execute any logic that should take place if the save fails.
    // error is a Parse.Error with an error code and message.
    alert('Failed to create new object, with error code: ' + error.message);
  }
});
