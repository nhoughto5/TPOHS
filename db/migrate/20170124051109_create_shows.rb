class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.datetime :show_date
      t.text :description
      t.string :ticket_cost
      t.string :location

      t.timestamps
    end
  end
end
