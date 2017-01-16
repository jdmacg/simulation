class AddCalculationkeyToIncentives < ActiveRecord::Migration[5.0]
  def change
    add_column :incentives, :calculation_key, :string
  end
end
