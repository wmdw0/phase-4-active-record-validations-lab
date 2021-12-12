class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: (["Fiction", "Non-Fiction"]),
    message: "is not included in the list" }
    validates :title, exclusion: { in: (["True Facts"]),
    message: "is not included in the list" }
    # def avail_category?
    #     if :category == "Fiction" || "Non-Fiction"
    #   end
    # end
end
