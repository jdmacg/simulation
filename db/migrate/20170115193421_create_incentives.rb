class CreateIncentives < ActiveRecord::Migration[5.0]
  def change
    create_table :incentives do |t|
      t.timestamps
    end
  end
end
