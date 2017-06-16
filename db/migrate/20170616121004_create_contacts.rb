class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :email, null: false
      t.string :ip, null: false
      t.text   :message
      t.jsonb :urls, null: false, default: '{}'

      t.timestamps
    end
    add_index :contacts, :urls, using: :gin
  end
end
