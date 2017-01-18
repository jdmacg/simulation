class AddValueT4ToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :value_t4, :integer
  end
end
