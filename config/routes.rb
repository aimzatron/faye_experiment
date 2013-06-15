Fayeeeeee::Application.routes.draw do
  root to: 'messages#index'

  # resources :messages


  scope "/:game_id" do
    resources :messages
    post '/messages' => 'messages#create', as: :create_message
  end
end
