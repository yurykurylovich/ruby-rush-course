require_relative 'bodybuilder'

body_builder1 = BodyBuilder.new
body_builder2 = BodyBuilder.new
body_builder3 = BodyBuilder.new

# https://ruby-doc.org/core-2.4.0/Integer.html#method-i-times
5.times do
  body_builder1.pump('triceps')
end

7.times do
  body_builder1.pump('biceps')
end

10.times do
  body_builder1.pump('deltovidka')
end

10.times do
  body_builder2.pump('triceps')
end

4.times do
  body_builder2.pump('biceps')
end

7.times do
  body_builder2.pump('deltovidka')
end

8.times do
  body_builder3.pump('triceps')
end

5.times do
  body_builder3.pump('biceps')
end

4.times do
  body_builder3.pump('deltovidka')
end

puts 'Первый бодибилдер:'
body_builder1.show_muscles
puts

puts 'Второй бодибилдер:'
body_builder2.show_muscles
puts

puts 'Третий бодибилдер:'
body_builder3.show_muscles
puts