class Director < Professional
    has_many :movies, class_name: 'Movie', foreign_key: 'director_id'
    #um diretor pode ter dirigido vários filmes.
end
