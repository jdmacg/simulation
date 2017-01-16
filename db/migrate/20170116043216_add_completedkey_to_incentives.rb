class AddCompletedkeyToIncentives < ActiveRecord::Migration[5.0]
  def change
    add_column :incentives, :completed_key, :string
  end
end
