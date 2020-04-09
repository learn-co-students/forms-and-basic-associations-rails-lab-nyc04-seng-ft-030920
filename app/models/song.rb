class Song < ActiveRecord::Base
  has_many :notes
  belongs_to :artist
  belongs_to :genre


  def artist_name
    artist.try(:name)
  end

end
