class CreateBookclubs < ActiveRecord::Migration[6.0]
  def change
    create_table :bookclubs do |t|
      t.string :name
      t.bigint :book_id

      t.timestamps
    end
  end
end
