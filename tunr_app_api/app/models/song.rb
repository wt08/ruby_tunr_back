class Song < ApplicationRecord
    # if a songId gets deleted elsewhere, dependent: :destroy will also destroy it in relates
    has_many :relates, dependent: :destroy
    has_many :playlists, through: :relates
end
