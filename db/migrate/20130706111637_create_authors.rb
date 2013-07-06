class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email_address
      t.string :biography

      t.timestamps
    end
  end
end
