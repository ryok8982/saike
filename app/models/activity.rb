class Activity < ApplicationRecord
  attachment :image
  has_many :requests, dependent: :destroy
end
