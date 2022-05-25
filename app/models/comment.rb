class Comment < ApplicationRecord
  belongs_to :article

  VALID_STATUSES = ["public", "archived", "private"]

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == "archived"
  end
end
