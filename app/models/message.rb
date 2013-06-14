class Message < ActiveRecord::Base
  attr_accessible :content, :team_name, :game_id

  validates_presence_of :content
  validates_presence_of :game_id
  validates_presence_of :team_name
  validates_length_of :content, :maximum => 52

end
