class Song < ApplicationRecord
    has_many :relates
    has_many :playlists, through: :relates
end
