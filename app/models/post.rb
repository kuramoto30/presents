class Post < ApplicationRecord
  with_options presence: true do
    validates :present_name
    validates :present_score
    validates :present_review
  end

  enum present_score: {
    Very_Bad: 1,
    Bad: 2,
    Medium: 3,
    Good: 4,
    Very_Good: 5
  }
end
