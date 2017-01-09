class RemovePropertyValuesIdFromProperties < ActiveRecord::Migration[5.0]
  def change
  	remove_column :properties, :property_type, :integer 
  	remove_column :properties, :property_values_id, :integer 
  end
end
