class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    LIST = ["chinese", "italian", "japanese", "french", "belgian"]
    validates :name, presence: true
    validates :address, presence: true
    validates :category, inclusion: { in: LIST }
end
