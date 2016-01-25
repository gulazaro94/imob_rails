class Property < ActiveRecord::Base
  belongs_to :user

  validates :title, :description, :price, :user,
    presence: true
end
