Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
 #ホームをmessagesにするルーティング
 root to: "messages#index"
end
