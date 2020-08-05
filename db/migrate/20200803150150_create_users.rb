class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :description
      t.integer :age
      t.string :favorite_books
      t.string :location
      t.string :image_url

      t.timestamps
    end
  end
end
