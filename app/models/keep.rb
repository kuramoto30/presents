class Keep < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :user_id, uniqueness: {
    scope: :post_id,
    message: "は同じ投稿を２個以上キープできません",
  }
end
