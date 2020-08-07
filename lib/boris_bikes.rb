# an object that can take in, and give out bikes to people.
class DockingStation
	DEFAULT_CAPACITY = 20
	attr_reader :capacity
	def initialize(capacity= DEFAULT_CAPACITY)
		@capacity = capacity
		@available_bikes = []
	end
	#releases bikes
	def release_bike
		fail 'No bikes available' if empty?
		@available_bikes.each do |bike|
			if bike.working?
				@available_bikes.delete(bike)
			end	
		end 
		fail 'All available bikes are broken'
	end
	#takes in a bike and docks it
	def dock(bike, condition= 'working')
		fail 'Dock is full' if full?
		bike.report_condition(condition)
		@available_bikes.append(bike)
		@available_bikes[@available_bikes.length - 1]
	end
	#returns value of already docked bike
	attr_reader :available_bikes

	private
	def full?
	 if	@available_bikes.count >= DEFAULT_CAPACITY
		true
	 end
	end

	private
	def empty?
		if @available_bikes.empty?
			true
		end
	end


end

class Bike
	def initialize(bike_condition= 'working')
	@bike_condition = bike_condition
	end
	def working?
		if @bike_condition == 'working'
			true
		else
			false
		end
	end
	def report_condition(status)
		@bike_condition = status
	end

	
end