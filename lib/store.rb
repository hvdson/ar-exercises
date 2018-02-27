class Store < ActiveRecord::Base
  # attr_accessor :destroy
  has_many :employees, :dependent => :destroy
  validates_length_of :name, minimum: 3
  validates :annual_revenue, :numericality => {greater_than_or_equal_to: 0} 

  before_destroy :has_no_employees?

  private
    def has_no_employees?
      # if there's employees in the store
      # self.employees.empty?
      self.employees.size < 1
    end

end
