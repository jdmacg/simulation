class RemoveProvinceFromProperties < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :province, :integer
  end
end
