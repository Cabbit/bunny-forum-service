# frozen_string_literal: true
class ForumSerializer
  include JSONAPI::Serializer
  has_many :forums

  attribute :forum_id
  attribute :description
  attribute :topics_count
  attribute :posts_count
  attribute :last_poster_id
  attribute :last_posted_at
end
