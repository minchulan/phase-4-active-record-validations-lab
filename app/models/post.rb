class Post < ApplicationRecord
    validates :title, presence: true 
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: ["Fiction", "Non-Fiction"]

    validate :title_is_sufficiently_clickbaity 

    private 
    def title_is_sufficiently_clickbaity
        if title != "You Won't Believe These True Facts"
            errors.add(:title, "title is not sufficiently clickbait-y")
        end 
    end 
end
