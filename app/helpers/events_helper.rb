module EventsHelper
	def time_status(attendance)
    if Time.now.between?(attendance.in, attendance.out)
      return 'On Time'
    else
      return 'Late'
    end
	end
end
