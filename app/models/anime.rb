class Anime < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  def self.create_from_api(anime_data)
    create(
      title: anime_data["attributes"]["canonicalTitle"],
      synopsis: anime_data["attributes"]["synopsis"],
      date: anime_data["attributes"]["startDate"],
      episodes: anime_data["attributes"]["episodeCount"],
      poster: anime_data["attributes"]["posterImage"]["original"]
    )
  end
end
