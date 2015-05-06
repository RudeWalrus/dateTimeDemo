class CreateDemoModels < ActiveRecord::Migration
  def change
    create_table :demo_models do |t|
      t.string :name
      t.date :date_field
      t.datetime :dateTime_field
      t.time :time_field
      t.text :comment

      t.timestamps null: false
    end
  end
end
