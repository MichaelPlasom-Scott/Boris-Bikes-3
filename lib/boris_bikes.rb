class DockingStation
  attr_reader :docked_bikes
  
  def initialize
    @docked_bikes = []
  end  


  def release_bike
    raise 'No bikes available' if @docked_bikes.empty? == true
    @docked_bikes[0]
  end

  def dock_bikes(arrayOfBikes)
    @docked_bikes += arrayOfBikes
  end
end 

class Bike

  def working?

  end 
end  

