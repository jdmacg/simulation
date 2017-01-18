class AddValueT3ToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :value_t3, :integer
  end
end
