class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.datetime :in
      t.datetime :out

      t.belongs_to :sub_event
      t.belongs_to :user

      t.timestamps
    end
  end
end
