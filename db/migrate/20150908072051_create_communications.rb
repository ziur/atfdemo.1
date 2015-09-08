class CreateCommunications < ActiveRecord::Migration
  def change
    create_table :communications do |t|
      t.string :type
      t.text :value
      t.boolean :default
      t.references :contact, index: true

      t.timestamps
    end
  end
end
