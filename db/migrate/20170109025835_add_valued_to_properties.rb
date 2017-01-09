class AddValuedToProperties < ActiveRecord::Migration[5.0]
  def change
  	add_column :properties, :value, :decimal
  end
end
