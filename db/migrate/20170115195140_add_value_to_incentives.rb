class AddValueToIncentives < ActiveRecord::Migration[5.0]
  def change
    add_column :incentives, :value, :integer
  end
end
