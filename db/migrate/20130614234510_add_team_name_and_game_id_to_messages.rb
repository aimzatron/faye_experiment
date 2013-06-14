class AddTeamNameAndGameIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :team_name, :string
    add_column :messages, :game_id, :integer
  end
end
