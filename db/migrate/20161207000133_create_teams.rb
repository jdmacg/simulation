class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.belongs_to :user, index: true
      t.integer :cash_balance
      t.timestamps
    end
  end
end
