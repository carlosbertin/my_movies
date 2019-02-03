class Professional < ApplicationRecord
    validates :name, :gender, presence: true
    validates :gender, inclusion: { in: ['male', 'female'], 
        message: "%{value} is not valid - expected 'male' or 'female'" }

    belongs_to :director, class_name: 'Director', foreign_key: 'director_id', optional: true
end
