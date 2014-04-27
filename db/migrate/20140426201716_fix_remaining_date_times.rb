class FixRemainingDateTimes < ActiveRecord::Migration
  def change
  	change_column :events, :start, :time
  	change_column :events, :end, :time

  	change_column :attendances, :in, :time
  	change_column :attendances, :out, :time
  end
end
