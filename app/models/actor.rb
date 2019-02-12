class Actor < Professional
    has_and_belongs_to_many :movies, association_foreign_key: 'movie_id', join_table: 'actors_movies'

    #auto-relacionamento
    has_many :children, :class_name => "Actor", :foreign_key => "father_id"
    belongs_to :father, :class_name => "Actor"

end
