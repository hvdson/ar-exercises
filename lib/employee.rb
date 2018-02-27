class Employee < ActiveRecord::Base
  belongs_to :store
  # validate :has_apparel
  validates :store, presence: true
  validates_presence_of :first_name, :last_name
  validates_inclusion_of :hourly_rate, in: 40..200

  # def has_apparel
  #   if !mens_apparel.present? && !womens_apparel.present?
  #     error_womens_apparel
  #     error_mens_apparel
  #   end
  # end

  # def error_womens_apparel
  #   errors.add(:womens_apparel, "Can't be empty")
  # end

  # def error_mens_apparel
  #   errors.add(:mens_apparel, "Can't be empty")
  # end
end
