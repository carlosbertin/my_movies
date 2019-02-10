class Movie < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: { scope: :release_date,
        message: "should not have two movies with same name and release_date" }

    belongs_to :director, class_name: 'Director', foreign_key: 'director_id', optional: true
    #Em nosso projeto MyMovies, um filme possui exatamente um diretor.

    has_and_belongs_to_many :actors, association_foreign_key: 'actor_id', join_table: 'actors_movies'
    #as duas linhas abaixo são para implementar um auto-relacionamento
    #Suponha que queremos manter as referências das sequências que um filme teve. 
    #Teríamos que ter um auto-relacionamento na classe Movie
    # has_many :sequence, class_name: 'Movie', foreign_key: 'sequence_id'
    # belongs_to :original_movie, class_name: 'Movie'
end