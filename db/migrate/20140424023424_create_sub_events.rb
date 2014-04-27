class CreateSubEvents < ActiveRecord::Migration
  def change
    create_table :sub_events do |t|
      t.datetime :date
      
      t.belongs_to :event

      t.timestamps
    end
  end
end
