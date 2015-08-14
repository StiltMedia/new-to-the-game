class AddEqualizerToFact < ActiveRecord::Migration
  def change
    add_column :facts, :equalizer_id, :integer
  end
end
