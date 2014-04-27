class SubEvent < ActiveRecord::Base
	has_many :attendances
	belongs_to :event
end
