class AddValueT2ToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :value_t2, :integer
  end
end
