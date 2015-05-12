class CreateEventSchedules < ActiveRecord::Migration
  def change
    create_table :event_schedules do |t|
      t.string :objectID
      t.datetime :event_date
      t.string :event_site
      t.string :event_visitor
      t.string :event_home

      t.timestamps
    end
  end
end
