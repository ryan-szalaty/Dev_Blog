class Article < ApplicationRecord
    has_many :comments

    VALID_STATUSES = ['public', 'archived', 'private']

    validates :status, inclusion: {in: VALID_STATUSES}

    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}

    def archived?
        status == 'archived'
    end
end
