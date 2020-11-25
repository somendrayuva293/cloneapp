class Post < ApplicationRecord
    belongs_to :user
    has_rich_text :postadd
    has_many :likes, dependent: :destroy
    has_many :comments,dependent: :destroy
end
