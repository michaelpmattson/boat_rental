require './lib/boat'
require './lib/renter'

RSpec.describe Boat do
  describe '#initialize' do
    it 'exists' do
      kayak = Boat.new(:kayak, 20)

      expect(kayak).to be_an_instance_of(Boat)
    end

    xit 'has attributes' do
      kayak = Boat.new(:kayak, 20)

      expect(kayak.type).to eq(:kayak)
      expect(kayak.price_per_hour).to eq(20)
      expect(kayak.hours_rented).to eq(0)
    end
  end

  describe '#add_hour' do
    xit 'adds hour' do
      kayak = Boat.new(:kayak, 20)

      expect(kayak.hours_rented).to eq(0)

      kayak.add_hour
      kayak.add_hour
      kayak.add_hour

      expect(kayak.hours_rented).to eq(3)
    end
  end
end
