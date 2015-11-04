# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# Mayor.create(name: 'Emanuel', city: cities.first)

require 'base64'

def seed_image(file_name)
  Base64.encode64(File.open(File.join(Rails.root, "/db/seed/images/#{file_name}.jpg")).read)
end

Post.create title: 'Post 1', image: seed_image('home-cat')
Post.create title: 'Post 2', image: seed_image('burrito')