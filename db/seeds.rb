# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 開発用ユーザーの作成
user = User.find_or_create_by!(email: "kuma25@gmail.com") do |u|
  u.password = "password"
end

# ジャンルの作成
['和菓子', '洋菓子', 'パン'].each do |genre_name|
  Genre.find_or_create_by!(name: genre_name)
end

puts "ユーザーとジャンルの初期データ登録が完了しました！"