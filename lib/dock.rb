class Dock
  attr_reader :name,
              :max_rental_time,
              :rental_log,
              :revenue

  def initialize(name, max_rental_time)
    @name            = name
    @max_rental_time = max_rental_time
    @rental_log      = {}
    @revenue         = 0
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    charge = {}
    charge[:card_number] = @rental_log[boat].credit_card_number
    if max_rental_time?(boat)
      charge[:amount] = boat.price_per_hour * max_rental_time
    else
      charge[:amount] = boat.price_per_hour * boat.hours_rented
    end
    charge
  end

  def max_rental_time?(boat)
    boat.hours_rented >= max_rental_time
  end

  def log_hour
    @rental_log.each do |boat, renter|
      boat.add_hour
    end
  end

  def return(boat)
    charge = charge(boat)
    @revenue += charge[:amount]
    @rental_log.delete(boat)
  end
end
