class CreateAttendeeEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :attendee_events do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :event, foreign_key: true

      t.timestamps
    end
  end
end
