class EntryEventController < ApplicationController

	# PARAMS : user_id , beacon_id, time_in OR time_out, attendance_id

  def create

  	if has_attendance_id?
  		@attendance = Attendance.find_by_id(params[:attendance_id])	
  	else
  		@attendance = Attendance.new
  	end

  	if entry_action?
  		@attendance.in = params[:time_in]
  	else
  		@attendance.out = params[:time_out] # Time out must always come with attendance_id, otherwise will cause an error later on.
  	end

  	@event = Event.find_by beacon: params[:beacon_id] # If beacon is not linked to any event, next line will cause an error.
    @sub_event = SubEvent.where(:date => Date.today, :event_id => @event.id).first_or_create
  	
  	@attendance.user_id = params[:user_id]
  	@attendance.sub_event = @sub_event
  	@attendance.save

    respond_to do |format|
      if @attendance.save
        format.json { render :show, status: :created, location: @attendance }
      else
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end

  end

  private

  def entry_action?
  	params.has_key?(:time_in)
  end

  def has_attendance_id?
  	params.has_key?(:attendance_id)
  end

end
