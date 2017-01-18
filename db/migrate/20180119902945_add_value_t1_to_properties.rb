class AddValueT1ToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :value_t1, :integer
  end
end
