class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :keeps, dependent: :destroy
  has_many :keeped_users, through: :keeps, source: :user
  with_options presence: true do
    validates :present_name
    validates :present_score
    validates :present_review
  end

  def keeped_by?(user)
    keeps.any? { |keep| keep.user_id == user.id }
  end

  enum present_score: {
    Very_Bad: 1,
    Bad: 2,
    Medium: 3,
    Good: 4,
    Very_Good: 5
  }
end
