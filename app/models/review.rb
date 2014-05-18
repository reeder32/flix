class Review < ActiveRecord::Base
  belongs_to :movie
  
  validates :name, presence: true
  
  validates :comment, length: {minimum: 4}
  
  STARS = (1..5)
  
  validates :stars, inclusion: { 
            in: STARS,
            message: "Must be between 1 and 5."
    }
  
end
