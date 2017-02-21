class AddAttachmentAvatarToQuestions < ActiveRecord::Migration
  def self.up
    change_table :questions do |t|
      t.attachment :avatar
      t.attachment :avatar2
    end
  end

  def self.down
    remove_attachment :questions, :avatar, :avatar2
  end
end
