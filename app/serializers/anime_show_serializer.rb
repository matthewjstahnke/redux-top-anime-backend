class AnimeShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :synopsis, :date, :episodes, :poster
  has_many :reviews
end