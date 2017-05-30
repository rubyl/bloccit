require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph
  )
end

posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

50.times do
  Advertisement.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph,
    price: 20
  )
end

puts "Seed finished"
puts "#{Advertisement.count} advertisements created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
