class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts, dependent: :destroy
  has_many :keeps, dependent: :destroy
  has_many :keeped_posts, through: :keeps, source: :post
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

        def self.guest
        find_or_create_by!(email: "guest@example.com") do |user|
          user.password = SecureRandom.urlsafe_base64
          user.nickname = "ゲスト"
          user.gender = 1
          user.age = 3
        end
      end

  with_options presence: true do
    validates :nickname
    validates :gender
    validates :age
  end
  enum gender: {
    man: 0,
    woman: 1
  }
  enum age: {
    single_digit: 0,
    teens: 1,
    twenties: 2,
    thirties: 3,
    forties: 4,
    fifties: 5,
    sixties: 6,
    seventies: 7,
    eighties: 8,
    nineties: 9
  }
end