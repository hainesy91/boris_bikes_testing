require_relative '../lib/docking_station'

describe DockingStation do 

  let(:bike) { Bike.new }
  let(:station) { DockingStation.new }

  it 'should be able to accept a bike' do
    station = DockingStation.new

    expect(station.bike_count).to eq 0

    station.dock(bike)

    expect(station.bike_count).to eq 1
  end

  it 'should allow a bike to be taken' do
    station.dock(bike)
    station.release(bike)
    expect(station.bike_count).to eq 0
  end
end