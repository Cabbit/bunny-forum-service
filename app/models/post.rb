# frozen_string_literal: true
class Post < ActiveRecord::Base
  validates :title, presence: true
end