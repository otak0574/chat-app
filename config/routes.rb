Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
 #ホームをmessagesにするルーティング
 root to: "messages#index"
 #ユーザー編集画面が表示されるルーティング
 resources :users, only: [:edit, :update]
end
