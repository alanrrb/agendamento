require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe "#index" do
  		before(:each) do
  			usuario = Usuario.create(
				email: "usuario@teste.com",
				password: "12345678",
				password_confirmation: "12345678",
				nome: "Usuario",
				sobrenome: "Teste"
			)

			sign_in :usuario, usuario
		end

		it "o usuario deve estar logado" do
			expect(subject.current_usuario) != nil
			expect(response).to have_http_status(:success)
    	end

    	it "acessar index" do
		    get 'index'
		    expect(response).to be_success
		end
  end
end