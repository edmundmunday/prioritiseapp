class Feature < ApplicationRecord
    has_many :priorities
    
    def sum_of_new_sales
        priorities.sum(&:new_sales)
    end
    
    def avg_of_new_sales
        if (priorities.count == 0)
            return 0
        end
        sum_of_new_sales / priorities.count
    end
    
    def sum_of_existing_sales
        priorities.sum(&:existing_customers)
    end
    
    def avg_of_existing_sales
        if (priorities.count ==0)
            return 0
        end
        sum_of_existing_sales / priorities.count
    end
    
    def sum_of_strategy
        priorities.sum(&:strategic)
    end
    
    def avg_of_strategy
        if (priorities.count ==0)
            return 0
        end
        sum_of_strategy / priorities.count
    end
end


