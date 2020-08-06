class Playlist < ApplicationRecord
    has_many :relates
    has_many :songs, through: :relates
end
