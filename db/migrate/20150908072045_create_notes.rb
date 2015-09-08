class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.references :contact, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
