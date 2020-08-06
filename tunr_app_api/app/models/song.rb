class Song < ApplicationRecord
    has_many :joins
    has_many :playlists, through: :joins
end
