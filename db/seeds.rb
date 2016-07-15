def generate_text(number)
  charset = Array('A'..'Z') + Array('a'..'z')
  Array.new(number) { charset.sample }.join
end

16.times do
  title = generate_text(rand(5..20))
  description = generate_text(rand(1..20))

  p "Create category #{title}"
  Forum.create! title: title, description: description
end

Forum.find_each do |forum|
  rand(1..200).times do
    title = generate_text(rand(5..20))
    p "Create topic #{title} for forum #{forum.title}"
    Topic.create! title: title, forum_id: forum.id
  end
end
