class AddPropertyTypeIdToProperties < ActiveRecord::Migration[5.0]
  def change
    add_reference :properties, :property_type, index: true
  end
end
