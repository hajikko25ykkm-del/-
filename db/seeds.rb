# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 開発用ユーザーの作成
user = User.find_or_create_by!(email: "kuma25@gmail.com") do |u|
  u.password = "kuma25"
end

# ジャンルの作成
Genre.find_or_create_by!(name: '和菓子')
Genre.find_or_create_by!(name: '洋菓子')
Genre.find_or_create_by!(name: 'パン')
Genre.find_or_create_by!(name: 'ケーキ')
Genre.find_or_create_by!(name: 'プリン')
Genre.find_or_create_by!(name: 'クッキー')

puts "ユーザーとジャンルの初期データ登録が完了しました！"