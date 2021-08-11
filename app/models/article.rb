# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true, uniqueness: true, length: { minimum: 5, maximum: 20 }
  validates :body, presence: true, length: { minimum: 10 }

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
