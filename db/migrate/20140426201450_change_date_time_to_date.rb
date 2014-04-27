class ChangeDateTimeToDate < ActiveRecord::Migration
  def change
  	change_column :sub_events, :date, :date
  end
end
