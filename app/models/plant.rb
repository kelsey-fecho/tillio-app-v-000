class Plant < ActiveRecord::Base
  has_many :clippings
  has_many :gardens, through: :clippings

  validates :name, presence: true
  validates :kind, presence: true

  def self.perennials
    self.where(kind: "Perennial")
  end

  def self.trees
    self.where(kind: "Tree")
  end
end
