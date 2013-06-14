require 'spec_helper'

describe Message do 
  it 'is invalid without text' do 
    expect(Message.create(:game_id => 2, :team_name => 'shitisbananas')).to be_invalid
  end 

  it 'is invalid without team name' do 
    expect(Message.create(:content => "You suck", :game_id => 2)).to be_invalid
  end 

  it 'is invalid without game id' do 
    expect(Message.create(:team_name => "ramrod", :content => "blarg")).to be_invalid
  end 

  it 'is invalid if longer than 52 chars' do
    expect(Message.create(:content => "supercalifragalisticexpealidocious 
      marypoppinschimchimenychrisislameeeeeeeeeeex", :game_id => 2, :team_name => "WEneedTheseITEMS" )).to be_invalid 
  end

  it 'is valid if shorter than 52 chars' do
    expect(Message.create(:content => "banana", :team_name => "Aimzatron", :game_id => 5)).to be_valid 
  end

end