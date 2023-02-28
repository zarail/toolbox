# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Users:
Tool.destroy_all
User.destroy_all

pat = User.create(email: "patricia@admin.com", password: "324ha*")
latif = User.create(email: "latif@admin.com", password: "324us*")

# Tools:
# @tool = Tool.new(name: "Axe", price: 1.2, user_id: 1)
tools = ["Axe", "Hammer", "Drill", "Clamps", "Caulk Gun", "Saw", "Ladder", "Pliers", "Screwdriver Set", "Shovel"]

tools.each do |tool|
  Tool.create(name: tool, price: rand(0.7..2.5), user: latif)
end

5.times do
  Tool.create(name: tools.sample, price: rand(0.7..2.5), user: pat)
end

puts "Created #{Tool.count} tools"

puts "Done"
