class Attendance < ActiveRecord::Base
	belongs_to :sub_event
	belongs_to :user
end
