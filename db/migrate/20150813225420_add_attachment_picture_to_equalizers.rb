class AddAttachmentPictureToEqualizers < ActiveRecord::Migration
  def self.up
    change_table :equalizers do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :equalizers, :picture
  end
end
