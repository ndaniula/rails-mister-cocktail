class Ingredient < ApplicationRecord
  has_many :doses
  before_destroy :check_for_doses

  validates :name, presence: true, uniqueness: true

  private
  def check_for_doses
    if doses.any?
      return false
    end
  end
end
