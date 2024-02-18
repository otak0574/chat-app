Rails.application.routes.draw do
  devise_for :users
 #ホームをroomsにするルーティング
 root to: "rooms#index"
 #ユーザー編集画面が表示されるルーティング
 resources :users, only: [:edit, :update]
 #ルームを新規作成するルーティング
 resources :rooms, only: [:new, :create, :destroy] do
  #メッセージのルーティング
  resources :messages, only: [:index, :create]
 end
end
