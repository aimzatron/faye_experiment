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
end
