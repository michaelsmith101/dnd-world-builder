#create campaigns
x = 1
10.times do
    Campaign.create!(
        title: "Fake Campaign #{x}",
        description: "Awesome Campaign",
    )
    x += 1
end

campaigns = Campaign.all

20.times do
    World.create!(
        campaign: campaigns.sample,
        title: "Awesome World",
        description: "Water, Ice, Fire, Lightning"
    )
end

puts "Seed Finished"
puts "#{Campaign.count} campaigns created"
puts "#{World.count} worlds created"
