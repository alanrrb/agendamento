require 'rails_helper'

RSpec.describe Horario, type: :model do
  before(:each) do
  	usuario = Usuario.create(
				email: "usuario@teste.com",
				password: "12345678",
				password_confirmation: "12345678",
				nome: "Usuario",
				sobrenome: "Teste"
			)
  end

  
end
