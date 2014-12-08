# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

source_list = [
    {
        "id" => 1,
        "name" => "Hyderabad",
    },
    {
        "id" => 2,
        "name" => "Secendrabad",
    },
    {
        "id" => 3,
        "name" => "kachiguda",
    }
     
]

dest_list = [
    {
        "id" => 1,
        "name" => "Uppal",
    },
    {
        "id" => 2,
        "name" => "Madapur",
    },
    {
        "id" => 3,
        "name" => "Lingmapalli",
    }
     
]

auto_list = [
    {
        "id" => 1,
        "number" => "AP 29 1212",
    },
    {
        "id" => 2,
        "number" => "TS 29 1112",
    },
    {
        "id" => 3,
        "number" => "TS 20 2223",
    }
     
]
source_list.each do |source|
    if !Source.find_by_id(source["id"])
        puts "creating source key with id: #{source["id"]}"
        Source.create(
            id: source["id"],
            name: source["name"], 
        )
    else
        puts "Source key with id: #{source["id"]} already exists"  
    end
end

dest_list.each do |dest|
    if !Destination.find_by_id(dest["id"])
        puts "creating dest key with id: #{dest["id"]}"
        Destination.create(
            id: dest["id"],
            name: dest["name"], 
        )
    else
        puts "Dest key with id: #{dest["id"]} already exists"  
    end
end

auto_list.each do |auto|
    if !Auto.find_by_id(auto["id"])
        puts "creating auto key with id: #{auto["id"]}"
        Auto.create(
            id: auto["id"],
            number: auto["number"], 
        )
    else
        puts "auto key with id: #{auto["id"]} already exists"  
    end
end