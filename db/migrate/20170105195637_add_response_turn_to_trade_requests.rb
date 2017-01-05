class AddResponseTurnToTradeRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :trade_requests, :response_turn, :Integer
  end
end
