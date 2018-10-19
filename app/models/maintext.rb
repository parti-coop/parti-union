class Maintext < ApplicationRecord
  validates :order, presence: true

  scope :priority, -> { order(order: :asc) }
  scope :recent, -> { order(created_at: :desc) }
  scope :lang, -> { order(lang: :desc) }
end
