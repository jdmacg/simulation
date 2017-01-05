class RemoveResponseFromTradeRequests < ActiveRecord::Migration[5.0]
  def change
    remove_column :trade_requests, :response, :boolean
  end
end
