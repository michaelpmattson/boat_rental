require './lib/renter'

RSpec.describe Renter do
  describe '#initialize' do
    xit 'exists' do
      renter = Renter.new("Patrick Star", "4242424242424242")

      expect(renter).to be_an_instance_of(Renter)
    end

    xit 'has attributes' do
      renter = Renter.new("Patrick Star", "4242424242424242")

      expect(renter.name).to eq("Patrick Star")
      expect(renter.credit_card_number).to eq("4242424242424242")
    end
  end
end
