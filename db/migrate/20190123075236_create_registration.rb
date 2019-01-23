class CreateRegistration < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.string :nama_lengkap,       null: false, limit: 35
      t.string :pekerjaan,          null: false
      t.string :nama_instansi,      null: false
      t.string :email,              null: false, limit: 100
      t.integer :nomor_handphone,   null: false
      t.text :alamat
    end
  end
end
