class Classification < ApplicationRecord
    belongs_to :user
    belongs_to :movie

    # Para limitar que um usuário tenha somente uma avaliação por filme
    validates :user_id, uniqueness: { scope: :movie_id } #repare que coloquei scoPe de movie
    
    # Validando o tipo de dado na nota que pode ser dada
    validates :score, numericality: {
        only_integer: true,
        greater_than_or_equal_to: 0,
        less_than_or_equal_to: 10
    }
end
