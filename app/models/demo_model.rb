class DemoModel < ActiveRecord::Base
  validates :name, presence: true
end
