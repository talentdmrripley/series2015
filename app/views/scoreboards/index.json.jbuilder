json.array!(@scoreboards) do |scoreboard|
  json.extract! scoreboard, :id, :eventschedule_ID, :event_schedule_id, :title, :visitor, :home, :v1, :h1, :v2, :h2, :v3, :h3, :v4, :h4, :v5, :h5, :v6, :h6, :v7, :h7, :v8, :h8, :v9, :h9, :v10, :h10, :v11, :h11, :v12, :h12, :v13, :h13, :v14, :h14, :v15, :h15, :v16, :h16, :v17, :h17, :v18, :h18, :v19, :h19, :v20, :h20, :vruns, :hruns, :vhits, :hhits, :verrs, :herrs, :gamenotes
  json.url scoreboard_url(scoreboard, format: :json)
end
