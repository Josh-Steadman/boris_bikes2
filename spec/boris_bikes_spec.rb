require 'boris_bikes'

describe DockingStation do
	
	it { is_expected.to respond_to (:release_bike) }

	describe '#release_bike' do
		it 'releases a bike' do
			bike = Bike.new
			subject.dock(bike)
			expect(subject.release_bike).to eq bike
		end
		
		it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
	end
  
	it 'releases working bikes' do
		bike = Bike.new
		subject.dock(bike)
    bike = subject.release_bike
    expect(bike).to be_working
	end
	
	describe '#dock' do
		it 'raises an error when the dock is full and you try to dock a bike' do
			subject.capacity.times do
				subject.dock Bike.new
			end
			expect { subject.dock Bike.new }.to raise_error 'Dock is full'
		end
	
		  
	end


	it { is_expected.to respond_to(:dock).with(1).argument }

	it { is_expected.to respond_to(:available_bikes) }

	it 'docks something and returns docked bike' do
		bike = Bike.new
		expect(subject.dock(bike)).to eq bike 
	end
	describe 'initialize' do
		it 'capacity set by user is max capacity' do
		dock = DockingStation.new(50)
		expect(dock.capacity).to eq 50
	  end
	  end

	describe DockingStation do
	  
	  it 'has a default capacity' do
		expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
	  end
	end

	
end