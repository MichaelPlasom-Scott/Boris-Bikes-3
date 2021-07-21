require 'boris_bikes'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'creates a new instance of the Bike class that responds to working?' do 
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).to respond_to(:working?)
  end

  it 'does docking station dock bikes' do 
    docking_station = DockingStation.new
    bike1 = Bike.new
    bike2 = Bike.new
    docking_station.dock_bikes([bike1, bike2])
    expect(docking_station.docked_bikes).to eq([bike1, bike2])
  end  
end
