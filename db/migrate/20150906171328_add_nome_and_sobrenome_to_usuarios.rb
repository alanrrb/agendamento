class AddNomeAndSobrenomeToUsuarios < ActiveRecord::Migration
  def change
  	remove_column :usuarios, :nome_completo, :string
    add_column :usuarios, :nome, :string
    add_column :usuarios, :sobrenome, :string
  end
end
