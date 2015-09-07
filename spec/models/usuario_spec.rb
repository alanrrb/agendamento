require 'rails_helper'

RSpec.describe Usuario, type: :model do
  before(:each) do
  			@usuario = Usuario.create(
				email: "usuario@teste.com",
				password: "12345678",
				password_confirmation: "12345678",
				nome: "Usuario",
				sobrenome: "Teste"
			)
	end

	it 'deve retornar o nome completo do usuario' do
		expect(@usuario.nome_completo).to eq("Usuario Teste")
	end

end
