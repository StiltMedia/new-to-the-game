class AddAttachmentDocumentToSupporters < ActiveRecord::Migration
  def self.up
    change_table :supporters do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :supporters, :document
  end
end
