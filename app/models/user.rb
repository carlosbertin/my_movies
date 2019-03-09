class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :classifications
  has_many :movies, through: :classifications

  def filmes_que_o_user_ja_assistiu
    # filmes_assistidos = []
    
    # classifications.each do |c| 
    #   filmes_assistidos << c.movie.title + ' ' + c.score.to_s
    # end
    # return filmes_assistidos
    filmes_assistidos = {}
    
    classifications.each do |c| 
        # filmes_assistidos << c.movie.title + ' ' + c.score.to_s
        filmes_assistidos.store(c.movie.title, c.score.to_s)
    end
    return filmes_assistidos
  end 

end