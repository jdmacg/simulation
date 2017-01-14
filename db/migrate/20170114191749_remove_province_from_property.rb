class RemoveProvinceFromProperty < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :province, :string
    add_column :properties, :province, :integer
  end
end
