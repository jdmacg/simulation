class AddTeamNameToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :team_name, :string
  end
end
