class Employee < ActiveRecord::Base 
  # 1. declare associations
  belongs_to :store

  # 2. Declare Validations
  # validate :has_apparel
  validates :store, presence: true
  validates_presence_of :first_name, :last_name
  validates_inclusion_of :hourly_rate, in: 40..200

  # 3. Register callback Methods using symbols
  # before_create :initialize_password_before
  after_create :initialize_password_after

  # ... last. Private methods
  private
    def initialize_password_before
      self.password = (0...8).map { (65 + rand(26)).chr }.join
    end

    def initialize_password_after
      self.update(password: (0...8).map { (65 + rand(26)).chr }.join)
    end

end


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

