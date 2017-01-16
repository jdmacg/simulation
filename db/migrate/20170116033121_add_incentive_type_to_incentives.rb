class AddIncentiveTypeToIncentives < ActiveRecord::Migration[5.0]
  def change
    add_column :incentives, :incentive_type, :int
  end
end
