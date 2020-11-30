class CreateSightings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :image
      t.references :category, null: false, foreign_key: true
      t.boolean :identified
      t.string :common_name
      t.string :scientific_name
      t.boolean :public
      t.date :date
      t.time :time
      t.text :notes
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
