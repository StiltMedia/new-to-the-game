class CreateDidYouKnows < ActiveRecord::Migration
  def change
    create_table :did_you_knows do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
