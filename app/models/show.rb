class Show < ApplicationRecord
  validates :title, :presence => true
  validates :show_date, :presence => true
  validates :location, :presence => true

  # Paperclip Gem
  has_attached_file :shows_img, styles: { :shows_index => "250x350>", :shows_show => "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :shows_img, content_type: /\Aimage\/.*\z/
end
