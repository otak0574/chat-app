Rails.application.routes.draw do
  get 'messages/index'
 #ホームをmessagesにするルーティング
 root to: "messages#index"
end
