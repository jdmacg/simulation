class RemoveIncomingPropertyFromTradeRequests < ActiveRecord::Migration[5.0]
  def change
  	remove_column :trade_requests, :incoming_property, :Integer
  end
end
