class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :nit
      t.string :dv
      t.string :direccion
      t.string :telefono
      t.string :fax
      t.string :email
      t.string :paginaweb

      t.timestamps
    end
  end
end
