class CreateDanceClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :dance_classes do |t|
      t.string :title
      t.text :description
      t.date :date
      t.time :time
      t.string :level
      t.integer :price
      t.belongs_to :teacher, null: false, foreign_key: true
      t.belongs_to :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
