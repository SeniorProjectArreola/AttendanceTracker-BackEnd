module EventsHelper
	def time_status(event,attendance)
	    if attendance.in.between?(event.start, event.end)
	      return 'On Time'
	    else
	      return 'Late'
	    end
	end
end
