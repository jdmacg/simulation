class AddValueToDevelopments < ActiveRecord::Migration[5.0]
  def change
    add_column :developments, :value, :decimal
  end
end
