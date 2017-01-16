class RemoveDescriptonFromIncentives < ActiveRecord::Migration[5.0]
  def change
    remove_column :incentives, :descripton, :string
  end
end
