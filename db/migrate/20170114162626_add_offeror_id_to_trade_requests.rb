class AddOfferorIdToTradeRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :trade_requests, :offeror_id, :Integer
    add_column :trade_requests, :offeree_id, :Integer
  end
end
