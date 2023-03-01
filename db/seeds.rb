# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Users:
Tool.destroy_all
User.destroy_all

pat = User.create(email: "patricia@admin.com", password: "324ha*", username: "pat15", firstname: "Patricia", lastname: "Lambertz")
latif = User.create(email: "latif@admin.com", password: "324us*", username: "latif123", firstname: "Latif", lastname: "Turaan")

# Tools:
# @tool = Tool.new(name: "Axe", price: 1.2, user_id: 1)
tools = [
  { name: "Axe",
    image_url: "https://images.unsplash.com/photo-1545476745-9211a9e7cca8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
    description: 'An axe is an implement that has been used for millennia to shape, split and cut wood, to harvest timber, as a weapon, and as a ceremonial or heraldic symbol. The axe has many forms and specialised uses but generally consists of an axe head with a handle, or helve.'},

  { name: "Hammer",
    image_url: "https://images.unsplash.com/photo-1586864387967-d02ef85d93e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80",
    description: 'A hammer is a tool, most often a hand tool, consisting of a weighted "head" fixed to a long handle that is swung to deliver an impact to a small area of an object. This can be, for example, to drive nails into wood, to shape metal (as with a forge), or to crush rock.[1][2] Hammers are used for a wide range of driving, shaping, breaking and non-destructive striking applications. Traditional disciplines include carpentry, blacksmithing, warfare, and percussive musicianship (as with a gong).' },

  { name: "Drill",
    image_url: "https://images.unsplash.com/photo-1504148455328-c376907d081c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZHJpbGx8ZW58MHx8MHx8&auto=format&fit=crop&w=1400&q=60",
    description: 'A drill is a tool used for making round holes or driving fasteners. It is fitted with a bit, either a drill or driverchuck. Hand-operated types are dramatically decreasing in popularity and cordless battery-powered ones proliferating due to increased efficiency and ease of use.' },

  { name: "Clamps",
    image_url: "https://images.unsplash.com/photo-1641893946457-015809f3821d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGNsYW1wfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    description: 'A clamp is a fastening device used to hold or secure objects tightly together to prevent movement or separation through the application of inward pressure. In the United Kingdom the term cramp is often used instead when the tool is for temporary use for positioning components during construction and woodworking; thus a G cramp or a sash clamp but a wheel clamp or a surgical clamp.' },

  { name: "Caulk Gun",
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdSfec97BX22AdWE4mFD8Tlp6WfgvmU8WA_g&usqp=CAU",
    description: 'A caulk gun is a special tool holding a cartridge or tube filled with the material used to seal up cracks and gaps. Most importantly, a caulking gun is also equipment commonly used by hydraulic tools manufacturer or hand tools manufacturer to bond a range of tools effectively.' },

  { name: "Saw",
    image_url: "https://images.unsplash.com/photo-1513710239666-c29e2c09dc32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2F3fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    description: 'A saw is a tool consisting of a tough blade, wire, or chain with a hard toothed edge. It is used to cut through material, very often wood, though sometimes metal or stone. The cut is made by placing the toothed edge against the material and moving it forcefully forth and less vigorously back or continuously forward. This force may be applied by hand, or powered by steam, water, electricity or other power source. An abrasive saw has a powered circular blade designed to cut through metal or ceramic.' },

  { name: "Ladder",
    image_url: "https://images.unsplash.com/photo-1635082627989-dcd12a107364?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGxhZGRlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    description: 'A ladder is a vertical or inclined set of rungs or steps used for climbing or descending. There are two types: rigid ladders that are self-supporting or that may be leaned against a vertical surface such as a wall, and rollable ladders, such as those made of rope or aluminium, that may be hung from the top. The vertical members of a rigid ladder are called stringers or rails (US) or stiles (UK). Rigid ladders are usually portable, but some types are permanently fixed to a structure, building, or equipment. They are commonly made of metal, wood, or fiberglass, but they have been known to be made of tough plastic.' },

  { name: "Pliers",
    image_url: "https://images.unsplash.com/photo-1568775991632-58cfd186d1a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGxpZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    description: 'Pliers are a hand tool used to hold objects firmly, possibly developed from tongs used to handle hot metal in Bronze Age Europe.[1] They are also useful for bending and physically compressing a wide range of materials. Generally, pliers consist of a pair of metal first-class levers joined at a fulcrum positioned closer to one end of the levers, creating short jaws on one side of the fulcrum, and longer handles on the other side. This arrangement creates a mechanical advantage, allowing the force of the grip strength to be amplified and focused on an object with precision. The jaws can also be used to manipulate objects too small or unwieldy to be manipulated with the fingers.' },

  { name: "Screwdriver Set",
    image_url: "https://images.unsplash.com/photo-1580403444499-062473f715d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHNjcmV3ZHJpdmVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    description: 'A screwdriver is a tool, manual or powered, used for turning screws. A typical simple screwdriver has a handle and a shaft, ending in a tip the user puts into the screw head before turning the handle. This form of the screwdriver has been replaced in many workplaces and homes with a more modern and versatile tool, a power drill, as they are quicker, easier, and can also drill holes. The shaft is usually made of tough steel to resist bending or twisting. The tip may be hardened to resist wear, treated with a dark tip coating for improved visual contrast between tip and screw—or ridged or treated for additional "grip". Handles are typically wood, metal, or plastic.' },

  { name: "Shovel",
    image_url: "https://images.unsplash.com/photo-1599914466149-1b958674b7ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2hvdmVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    description: 'A shovel is a tool used for digging, lifting, and moving bulk materials, such as soil, coal, gravel, snow, sand, or ore. Most shovels are hand tools consisting of a broad blade fixed to a medium-length handle. Shovel blades are usually made of sheet steel or hard plastics and are very strong. Shovel handles are usually made of wood (especially specific varieties such as ash or maple) or glass-reinforced plastic (fiberglass).' }
]

tools.each do |tool|
  Tool.create(name: tool[:name], price: rand(0.7..2.5).round(2), user: latif, image_url: tool[:image_url], description: tool[:description])
end

5.times do
  tool = tools.sample
  Tool.create(name: tool[:name], price: rand(0.7..2.5).round(2), user: pat, image_url: tool[:image_url], description: tool[:description])
end

puts "Created #{Tool.count} tools"

puts "Done"
