require 'spec_helper'

describe MessagesController do 
  describe "GET #index" do 
    it "index action should render index template" do 
      message = Message.new
      MessagesController.stub(:message).and_return(message)
      get :index
      response.should render_template :index
    end
  end

  describe "POST #create" do 
    it "post the message via a json payload" do 
      expect{
        post :create, message: {:game_id => 2, :team_name => "test", :content => "this is a test"}
      }.to change(Message, :count).by(1)
      # post(messages_path, {:game_id => 2, :team_name => "test", :content => "this is a test"})
    end
  end
end
