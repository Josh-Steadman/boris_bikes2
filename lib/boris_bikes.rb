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
		fail 'No bikes available' if  self.empty?
		@available_bikes.pop()
	end
	#takes in a bike and docks it
	def dock(bike)
		fail 'Dock is full' if self.full?
		@available_bikes.append(bike)
		@available_bikes[@available_bikes.length - 1]
	end
	#returns value of already docked bike
	attr_reader :available_bikes

	private
	def full?
		@available_bikes.count >= DEFAULT_CAPACITY
	end

	private
	def empty?
		 @available_bikes.empty?
		
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