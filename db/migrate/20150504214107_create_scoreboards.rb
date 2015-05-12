class CreateScoreboards < ActiveRecord::Migration
  def change
    create_table :scoreboards do |t|
      t.string :eventschedule_ID
      t.references :event_schedule, index: true
      t.string :title
      t.string :visitor
      t.string :home
      t.string :v1
      t.string :h1
      t.string :v2
      t.string :h2
      t.string :v3
      t.string :h3
      t.string :v4
      t.string :h4
      t.string :v5
      t.string :h5
      t.string :v6
      t.string :h6
      t.string :v7
      t.string :h7
      t.string :v8
      t.string :h8
      t.string :v9
      t.string :h9
      t.string :v10
      t.string :h10
      t.string :v11
      t.string :h11
      t.string :v12
      t.string :h12
      t.string :v13
      t.string :h13
      t.string :v14
      t.string :h14
      t.string :v15
      t.string :h15
      t.string :v16
      t.string :h16
      t.string :v17
      t.string :h17
      t.string :v18
      t.string :h18
      t.string :v19
      t.string :h19
      t.string :v20
      t.string :h20
      t.string :vruns
      t.string :hruns
      t.string :vhits
      t.string :hhits
      t.string :verrs
      t.string :herrs
      t.string :gamenotes

      t.timestamps
    end
  end
end
