class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.string :location
      t.text :details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
