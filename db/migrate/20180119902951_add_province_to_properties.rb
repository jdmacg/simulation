class AddProvinceToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :province, :string
  end
end
