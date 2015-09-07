Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  devise_for :usuarios

  scope 'horarios' do
    get '/novo/:hora/:dia' => 'horarios#novo', as: 'horarios_novo'
    get '/excluir/:hora/:dia' => 'horarios#excluir', as: 'horarios_excluir'
  end
end
