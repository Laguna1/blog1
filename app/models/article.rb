# frozen_string_literal: true

class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  validates :title, presence: true, uniqueness: true, length: { minimum: 5, maximum: 20 }
  validates :body, presence: true, length: { minimum: 10 }
end
