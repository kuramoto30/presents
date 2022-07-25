

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")

user1 = User.create!(email: "satou@example.com", nickname: "nickname1", gender: 0, age: 2, password: "password")
user2 = User.create!(email: "suzuki@example.com", nickname: "nickname2", gender: 1, age: 3,password: "password")
user3 = User.create!(email: "tanaka@example.com", nickname: "nickname3", gender: 1, age: 4,password: "password")

post1 = user1.posts.create!(present_name: 'パソコン', present_score: 5, present_review: 'プログラミングが出来るので嬉しかった')
post2 = user2.posts.create!(present_name: 'フォーク', present_score: 1, present_review: '意味がわからなかった。')
post3 = user3.posts.create!(present_name: '腕時計', present_score: 3, present_review: '嬉しいけど好きなブランドでなかった。')
post4 = user1.posts.create!(present_name: 'コーヒー豆', present_score: 4, present_review: 'よく飲むから嬉しかった。でも誕生日にはちょっと、、、')
post5 = user2.posts.create!(present_name: 'お肉', present_score: 2, present_review: '固くて不味かった。気持ちは嬉しかった。')
post6 = user3.posts.create!(present_name: '低音調理器具', present_score: 4, present_review: '嬉しいけど使い方わからない。')
post7 = user3.posts.create!(present_name: 'スマホケース', present_score: 5, present_review: '欲しかった物だから嬉しかった')
post8 = user2.posts.create!(present_name: '包丁', present_score: 4, present_review: '切れ味が良く、料理が楽しい')
post9 = user1.posts.create!(present_name: '財布', present_score: 1, present_review: 'デザインがイマイチだった')
post10 = user1.posts.create!(present_name: 'ネックレス', present_score: 2, present_review: '気持ちは嬉しいが多分つけない')



post1.keeps.create!(user_id: user1.id)

User.create!(email: "test@example.com", gender: 1, age: 3,nickname: "テストさん", password:"password")

puts '初期データの投入に成功'