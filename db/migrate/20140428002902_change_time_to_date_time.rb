class ChangeTimeToDateTime < ActiveRecord::Migration
  def change

  	remove_column :events, :start
  	remove_column :events, :end

  	remove_column :attendances, :in
  	remove_column :attendances, :out

  	add_column :events, :start, :datetime
  	add_column :events, :end, :datetime

  	add_column :attendances, :in, :datetime
  	add_column :attendances, :out, :datetime
  	
  end
end
