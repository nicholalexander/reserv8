class Manager < ActiveRecord::Base
  has_and_belongs_to_many :restaurants

  # scope :owner, -> { where(owner: true) }
end

