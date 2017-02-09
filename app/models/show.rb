class Show < ApplicationRecord
  validates :title, :presence => true
  validates :show_date, :presence => true
  validates :location, :presence => true
end
