class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.references :city, index: true

      t.string :name
      t.date :birth_date
      t.string :phone, limit: 18
      t.string :username
      t.string :password

    end
  end
end
