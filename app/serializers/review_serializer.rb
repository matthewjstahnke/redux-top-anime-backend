class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :username, :userId

  def username
    object.user.username
  end

  def userId
    object.user.id
  end


end
