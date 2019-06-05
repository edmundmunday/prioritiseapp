class Priority < ApplicationRecord
    belongs_to :feature
    validates :new_sales, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
    validates :existing_customers, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
    validates :strategic, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end