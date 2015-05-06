class AddRangeToDemoModel < ActiveRecord::Migration
  def change
    add_column :demo_models, :publish_date, :datetime
    add_column :demo_models, :expiration_date, :datetime
  end
end
