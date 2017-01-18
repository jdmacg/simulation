class AddValueT5ToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :value_t5, :integer
  end
end
