class CreateVstarters < ActiveRecord::Migration
  def change
    create_table :vstarters do |t|
      t.string :eventschedule_ID
      t.string :team
      t.string :firstlast
      t.string :inning_entered
      t.string :player_position
      t.string :visitor_shortname
      t.string :notes

      t.timestamps
    end
  end
end
