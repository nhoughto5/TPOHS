class AddAttachmentShowsImgToShows < ActiveRecord::Migration
  def self.up
    change_table :shows do |t|
      t.attachment :shows_img
    end
  end

  def self.down
    remove_attachment :shows, :shows_img
  end
end
