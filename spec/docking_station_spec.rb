require 'boris_bikes'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'does docking station dock bikes' do 
    docking_station = DockingStation.new
    bike1 = Bike.new
    bike2 = Bike.new
    docking_station.dock_bikes([bike1, bike2])
    expect(docking_station.docked_bikes).to eq([bike1, bike2])
  end  

  it 'releases a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bikes([bike])
    expect(docking_station.release_bike).to eq(bike)
  end

  it 'raises an error when there are no bikes available' do 
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end
end
