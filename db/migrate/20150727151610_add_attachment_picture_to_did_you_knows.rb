class AddAttachmentPictureToDidYouKnows < ActiveRecord::Migration
  def self.up
    change_table :did_you_knows do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :did_you_knows, :picture
  end
end
