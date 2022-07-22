# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.create!(present_name: 'パソコン', present_score: 5, present_review: 'プログラミングが出来るので嬉しかった。', user_id: 2)
Post.create!(present_name: 'フォーク', present_score: 1, present_review: '意味がわからなかった。', user_id: 2)
Post.create!(present_name: '腕時計', present_score: 3, present_review: '嬉しいけど好きなブランドでなかった。', user_id: 2)
Post.create!(present_name: 'コーヒー豆', present_score: 4, present_review: 'よく飲むから嬉しかった。でも誕生日にはちょっと、、、', user_id: 2)
Post.create!(present_name: 'お肉', present_score: 2, present_review: '固くて不味かった。気持ちは嬉しかった。', user_id: 2)
Post.create!(present_name: '低音調理器具', present_score: 4, present_review: '嬉しいけど使い方わからない。', user_id: 2)

puts '初期データの投入に成功'