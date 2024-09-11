class Warehouse < ApplicationRecord
  belongs_to :user

  validates :name, presence: :true
  validates :description, presence: :true
  # validates :name, presence: :true
end
