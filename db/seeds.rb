# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# メインのサンプルユーザーを1人作成する
# User.create!(name:  "Example User",
#              email: "example@railstutorial.org",
#              password:              "foobar",
#              password_confirmation: "foobar",
#              admin: true)

# # 追加のユーザーをまとめて生成する
# 99.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name:  name,
#                email: email,
#                password:              password,
#                password_confirmation: password)
# end

# users = User.order(:created_at).take(6)
# 50.times do
#   title = Faker::Lorem.sentence(word_count: 1)
#   content = Faker::Lorem.sentence(word_count: 6)
#   users.each { |user| user.works.create!(title: title, content: content) }
# end

5.times do |n|
  User.create!(
    email: "test#{n + 1}@test.com",
    name: "テストユーザー#{n + 1}",
    password: "password"
  )
end