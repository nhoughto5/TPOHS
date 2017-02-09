class ChangeShowDateTypeInShows < ActiveRecord::Migration[5.0]
  def self.up
    change_column :shows, :show_date, :date
  end

  def self.down
    change_column :shows, :show_date, :datetime
  end
end
