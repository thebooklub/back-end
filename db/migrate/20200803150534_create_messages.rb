class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :usender_id
      t.string :recipient_id

      t.timestamps
    end
  end
end
