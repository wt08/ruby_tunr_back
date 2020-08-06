class Playlist < ApplicationRecord
    has_many :joins
    has_many :songs, through: :joins
end
