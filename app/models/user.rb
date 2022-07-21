class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
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
