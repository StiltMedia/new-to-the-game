class CreateSupporters < ActiveRecord::Migration
  def change
    create_table :supporters do |t|
      t.string :title
      t.string :name
      t.string :short_description
      t.text :description
      t.boolean :has_document
      t.string :document_title

      t.timestamps null: false
    end
  end
end
