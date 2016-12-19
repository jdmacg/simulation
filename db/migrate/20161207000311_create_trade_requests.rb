class CreateTradeRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :trade_requests do |t|
      t.integer :outgoing_property
      t.integer :outgoing_cash
      t.boolean :response
      t.integer :incoming_cash
      t.integer :incoming_property
      t.boolean :completed

      t.timestamps
    end
  end
end
