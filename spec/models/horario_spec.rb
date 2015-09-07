require 'rails_helper'

RSpec.describe Horario, type: :model do
  before(:each) do
  	@usuario = Usuario.create(
				email: "usuario@teste.com",
				password: "12345678",
				password_confirmation: "12345678",
				nome: "Usuario",
				sobrenome: "Teste"
			)
  	@usuario2 = Usuario.create(
				email: "usuario2@teste.com",
				password: "12345678",
				password_confirmation: "12345678",
				nome: "Usuario2",
				sobrenome: "Teste2"
			)
  end

  it 'nao deve criar um registro com o mesmo dia e horario' do
  	Horario.create(horario: "13:00", dia: 2, usuario_id: @usuario.id)
  	Horario.create(horario: "13:00", dia: 2, usuario_id: @usuario2.id)

  	expect(Horario.all.count).to eq(1)
  end

  
end
