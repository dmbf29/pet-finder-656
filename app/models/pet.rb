class Pet < ApplicationRecord
  # associations
  SPECIES = ['capybara', 'cat', 'manatee', 'dog', 'grasshopper']
  validates :address, presence: true
  validates :date, presence: true
  validates :species, inclusion: { in: SPECIES }
  enum status: [:healthy, :wounded, :dead]

  def found_days_ago
    (Date.today - date).to_i
  end
end
