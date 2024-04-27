# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Parent Community Groups

Group.create(name: 'Sydney parent group', group_type: 'parent community')
Group.create(name: 'Melbourne parent group', group_type: 'parent community')
Group.create(name: 'Tasmania parent group', group_type: 'parent community')

# Private Messaging Groups

Group.create(name: 'John and Jane chat', group_type: 'private messaging')
Group.create(name: 'Lola and Mike chat', group_type: 'private messaging')

# Mentor Groups

Group.create(name: 'Paul and Jack mentor group', group_type: 'mentor')
Group.create(name: 'Lisa and Mike mentor group', group_type: 'mentor')
