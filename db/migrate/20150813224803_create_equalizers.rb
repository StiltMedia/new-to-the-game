class CreateEqualizers < ActiveRecord::Migration
  def change
    create_table :equalizers do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
