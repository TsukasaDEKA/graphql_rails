# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env == "development"
  # Post.create!([
  #   {
  #     title: "伊達",
  #     content: "伊達メガネは「メガネとしての機能がない見た目だけのメガネ」なんだから、伊達政宗は「政宗としての機能がない見た目だけの政宗」つまり影武者"
  #   },
  #   {
  #     title: "ジョン・フォン・ノイマン",
  #     content: "Wikipediaより:ジョン・フォン・ノイマン（ハンガリー名：Neumann János（ナイマン・ヤーノシュ、[ˈnɒjmɒnˌjɑ̈ːnoʃ]）、ドイツ名：ヨハネス・ルートヴィヒ・フォン・ノイマン、John von Neumann, Margittai Neumann János Lajos, Johannes Ludwig von Neumann, 1903年12月28日 - 1957年2月8日）はハンガリー出身のアメリカ合衆国の数学者。20世紀科学史における最重要人物の一人。数学・物理学・工学・計算機科学・経済学・気象学・心理学・政治学に影響を与えた。原子爆弾（マンハッタン計画）やコンピュータ（ENIAC）の開発への関与でも知られる。"
  #   }
  # ])

  posts = []
  30.times do |num|
    post = {
      title: "タイトル" + num.to_s,
      content: "内容" + num.to_s
    }
    posts.append(post)
  end
  Post.create!(posts)
end