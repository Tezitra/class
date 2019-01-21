require "pry"
require "time"
class Event
	attr_accessor :start_date , :duration , :title ,  :email
	def initialize(time_event, duration_event, title_event, list_email)
		time_date = Time.parse(time_event)
		@start_date = time_date 
		@duration = duration_event.to_i
		@title = title_event.to_s
		@email = list_email
	end
	def postpone_24h
		@add_one_day = @start_date + (60 * 60 * 24)
		return @add_one_day
	end
	def end_date
		@end_date = @start_date + (@duration * 60)
	end
	def past_or_futur
		if @start_date < Time.now
			puts "L'evenement est déja passé"
		else
			puts "L'evenement est à venir"
		end
	end
	def event_is_coming_soon
		if Time.now + (30 * 60 ) == @start_date
			puts "L'evenement se déroulera dans moins de 30 minutes"
			else
				puts "L'evenement ne se déroulera pas dans moins de 30 minutes"
			end
	end
end
binding.pry
puts "end of file"

