require 'rails_helper'

RSpec.describe HorariosController, type: :controller do
  describe "acoes" do
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

		it "inserir e excluir registros" do
			xhr :get, 'novo', hora: 11, dia: 3, format: :js
			expect(Horario.all.count).to be(1)
			
		    xhr :get, 'excluir', hora: 11, dia: 3, format: :js
		    expect(Horario.all.count).to be(0)
		    expect(response).to be_success
		end
  end
end