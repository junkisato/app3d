class Patient < ApplicationRecord
  belongs_to :responsible
  has_many :pains
end
