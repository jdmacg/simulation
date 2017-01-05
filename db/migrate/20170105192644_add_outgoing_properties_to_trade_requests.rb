class AddOutgoingPropertiesToTradeRequests < ActiveRecord::Migration[5.0]
  def change
    add_column :trade_requests, :outgoing_properties, :Integer, array:true, default: []
  end
end
