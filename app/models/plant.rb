class Plant < ActiveRecord::Base
  has_many :clippings
  has_many :gardens, through: :clippings

  validates :name, presence: true
  validates :kind, presence: true

  def self.kinds
    self.all.map{|p| p.kind}.uniq
  end
end
