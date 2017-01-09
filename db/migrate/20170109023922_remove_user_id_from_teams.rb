class RemoveUserIdFromTeams < ActiveRecord::Migration[5.0]
  def change
  	remove_column :teams, :user_id, :index
  end
end
