class Vehicle < ActiveRecord::Base
  attr_accessible :type, :color, :year

  @subtypes = []

  validates_presence_of :type, :color, :year

  def self.inherited(child)
    @subtypes << child

    child.instance_eval do
       def model_name
         Vehicle.model_name
       end
     end
   super
  end
  def self.subtypes
    Rails.logger.info(@subtypes)
    @subtypes
  end

end
