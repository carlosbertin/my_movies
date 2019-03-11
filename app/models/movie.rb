class Movie < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: { scope: :release_date,
        message: "should not have two movies with same name and release_date" }

    belongs_to :director, class_name: 'Director', foreign_key: 'director_id', optional: true
    #Em nosso projeto MyMovies, um filme possui exatamente um diretor.

    has_and_belongs_to_many :actors, association_foreign_key: 'actor_id', join_table: 'actors_movies'
    has_many :classifications
    has_many :users, through: :classifications

    mount_uploader :avatar, AvatarUploader

    def average_score
        classifications.average(:score).to_f
    end
end