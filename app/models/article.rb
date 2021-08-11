# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { minimum: 5, maximum: 20 }
  validates :body, presence: true, length: { minimum: 10 }

  has_many :comments
end
