class AddNomeCompletoToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :nome_completo, :string
  end
end
