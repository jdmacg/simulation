class AddDescriptionToIncentives < ActiveRecord::Migration[5.0]
  def change
    add_column :incentives, :description, :string
  end
end
