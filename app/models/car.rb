class Car < Vehicle
  attr_accessible :color, :year


  Rails.logger.info("loaded Car")
end