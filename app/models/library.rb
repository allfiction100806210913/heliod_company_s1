class Library < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :card_name, presence: true
  validates :manacost, presence: true
  validates :color, presence: true
  validates :card_text, presence: true
  validates :power, presence: true
  validates :toughness, presence: true
  validates :image, presence: true












end
