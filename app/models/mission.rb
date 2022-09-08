class Mission < ApplicationRecord
  belongs_to :scientist
  belongs_to :planet

  # must have a name, a scientist and a planet
  # a scientist cannot join the same mission twice

  validates :name, :scientist, :planet, presence: true
  validates :scientist, uniqueness: true

end
