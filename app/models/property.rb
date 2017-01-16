class Property < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :property_type, optional: true
  belongs_to :development


  def adjust_property_value(prop, dev)
      
  end
end
