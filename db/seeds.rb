puts 'Destroying current database entries...'

GroupUser.destroy_all
Message.destroy_all
User.destroy_all
Group.destroy_all

puts 'Creating user bios...'

user_bios = [
  "Coffee enthusiast. Cat lover. Netflix binger.",
  "Tech geek by day, foodie by night.",
  "Dreamer, believer, achiever.",
  "Bookworm. Adventure seeker. Tea addict.",
  "Music junkie. Pizza aficionado. Outdoor enthusiast.",
  "Fitness freak. Dog person. DIY enthusiast.",
  "Art lover. Wanderlust. Coffee snob.",
  "Fashionista. Food blogger. Beach bum.",
  "Movie buff. Wine connoisseur. Nature lover.",
  "Photography enthusiast. Foodie. Travel addict.",
  "Yoga enthusiast. Animal lover. Mindfulness advocate.",
  "Gamer. Anime fan. Ramen addict.",
  "Sports fanatic. BBQ enthusiast. Beer lover.",
  "Entrepreneur. Fitness enthusiast. Dog parent.",
  "Minimalist. Environmentalist. Adventure seeker.",
  "Poetry lover. Coffee addict. Dream chaser.",
  "Plant mom. Foodie. DIY enthusiast.",
  "Tech nerd. Music aficionado. Coffee addict.",
  "Fitness enthusiast. Travel junkie. Food lover.",
  "Bookworm. Coffee addict. Wanderlust.",
  "Movie buff. Pizza lover. Cat person.",
  "Art lover. Nature enthusiast. Coffee addict.",
  "Fashion lover. Foodie. Traveler.",
  "Gamer. Anime fan. Pizza enthusiast.",
  "Sports fanatic. Dog lover. BBQ enthusiast.",
  "Entrepreneur. Fitness enthusiast. Coffee addict.",
  "Minimalist. Environmentalist. Adventure lover.",
  "Poetry enthusiast. Coffee addict. Dreamer.",
  "Plant lover. Foodie. DIYer.",
  "Tech geek. Music lover. Coffee enthusiast.",
  "Fitness addict. Travel lover. Foodie.",
  "Bookworm. Coffee lover. Wanderer.",
  "Movie enthusiast. Pizza lover. Cat lover.",
  "Art enthusiast. Nature lover. Coffee lover.",
  "Fashionista. Foodie. Traveler.",
  "Gamer. Anime enthusiast. Pizza lover.",
  "Sports lover. Dog person. BBQ enthusiast.",
  "Entrepreneur. Fitness fanatic. Coffee lover.",
  "Minimalist. Environmentalist. Adventurer.",
  "Poetry lover. Coffee lover. Dreamer.",
  "Plant lover. Foodie. DIY enthusiast.",
  "Tech enthusiast. Music lover. Coffee addict.",
  "Fitness fanatic. Travel enthusiast. Foodie.",
  "Bookworm. Coffee addict. Wanderlust.",
  "Movie buff. Pizza enthusiast. Cat person.",
  "Art lover. Nature enthusiast. Coffee addict.",
  "Fashionista. Foodie. Travel junkie.",
  "Gamer. Anime fan. Ramen lover.",
  "Sports fan. Dog lover. BBQ aficionado.",
  "Entrepreneur. Fitness enthusiast. Dog lover.",
  "Minimalist. Environmentalist. Adventure seeker.",
  "Poetry lover. Coffee addict. Dreamer.",
  "Plant mom. Foodie. DIY enthusiast.",
  "Tech geek. Music aficionado. Coffee lover.",
  "Fitness enthusiast. Travel junkie. Food lover.",
  "Bookworm. Coffee addict. Wanderlust.",
  "Movie buff. Pizza lover. Cat person.",
  "Art lover. Nature enthusiast. Coffee addict.",
  "Fashion lover. Foodie. Traveler.",
  "Gamer. Anime fan. Pizza enthusiast.",
  "I have two children. My daughter is 2 and my son is 4. My hobbies are yoga and surfing.",
  "Entrepreneur. Fitness enthusiast. Coffee addict.",
  "Minimalist. Environmentalist. Adventure lover.",
  "Poetry enthusiast. Coffee addict. Dreamer.",
  "Plant lover. Foodie. DIYer."
];

puts 'Creating parent community groups...'
# Parent Community Groups

sydney_group = Group.create(name: 'Sydney parent group', group_type: 'parent community', post_code: 2000, due_date: "autumn 2024")
melbourne_group = Group.create(name: 'Melbourne parent group', group_type: 'parent community', post_code: 3000, due_date: "autumn 2024")
brisbane_group = Group.create(name: 'Brisbane parent group', group_type: 'parent community', post_code: 4000, due_date: "autumn 2024")
south_yarra_group = Group.create(name: 'Sth Yarra parent group', group_type: 'parent community', post_code: 3141, due_date: "winter 2024")
richmond_group = Group.create(name: 'Richmond parent group', group_type: 'parent community', post_code: 3121, due_date: "summer 2022")
prahran_group = Group.create(name: 'Prahran parent group', group_type: 'parent community', post_code: 3141, due_date: "summer 2022")

puts 'Creating private messaging groups...'
# Private Messaging Groups

Group.create(name: 'John and Jane chat', group_type: 'private messaging')
Group.create(name: 'Lola and Mike chat', group_type: 'private messaging')

puts 'Creating mentor groups...'
# Mentor Groups

Group.create(name: 'Paul and Jack mentor group', group_type: 'mentor')
Group.create(name: 'Lisa and Mike mentor group', group_type: 'mentor')

puts 'Creating 10 mentor users...'
# 10 mentor users

user = User.new(
  email: 'minerva.puente@example.com',
  password: '4591daa44cf24d43',
  first_name: 'Minerva',
  last_name: 'Puente',
  nickname: 'goldenlion888',
  bio: 'Coffee enthusiast. Cat lover. Netflix binger.',
  due_date: '2024-09-14',
  post_code: '3000',
  parent_experience: 8,
  is_mentor: true
)
file = URI.open('https://randomuser.me/api/portraits/women/73.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
prahran_group.users << user

user = User.new(
  email: 'vojislava.majstorovic@example.com',
  password: 'dbd95839d1d82447',
  first_name: 'Vojislava',
  last_name: 'Majstorović',
  nickname: 'purplebear715',
  bio: 'Tech geek by day, foodie by night.',
  due_date: '2025-04-06',
  post_code: '3000',
  parent_experience: 4,
  is_mentor: true
)
file = URI.open('https://randomuser.me/api/portraits/women/39.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
richmond_group.users << user

user = User.new(
  email: 'hazel.lawrence@example.com',
  password: '50b4f895898fd067',
  first_name: 'Hazel',
  last_name: 'Lawrence',
  nickname: 'smallladybug208',
  bio: 'I am a single mum with 2 kids. I raise them the Montessori way. We like doing bush walks.',
  due_date: '2025-03-19',
  post_code: '3121',
  parent_experience: 7,
  is_mentor: true
)
file = URI.open('https://randomuser.me/api/portraits/women/2.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
prahran_group.users << user

user = User.new(
  email: 'bella.stewart@example.com',
  password: 'f6af2641cd763461',
  first_name: 'Bella',
  last_name: 'Stewart',
  nickname: 'bigtiger457',
  bio: 'I am a working mum with a 2 year old son. My partner and I use gentle parenting.',
  due_date: '2024-05-30',
  post_code: '3121',
  parent_experience: 3,
  is_mentor: true
)
file = URI.open('https://randomuser.me/api/portraits/women/68.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
richmond_group.users << user

user = User.new(
  email: 'thea.rasmussen@example.com',
  password: '79afdb591bf2f901',
  first_name: 'Thea',
  last_name: 'Rasmussen',
  nickname: 'angrygoose810',
  bio: 'Music junkie. Pizza aficionado. Outdoor enthusiast.',
  due_date: '2024-09-22',
  post_code: '3000',
  parent_experience: 7,
  is_mentor: true
)
file = URI.open('https://randomuser.me/api/portraits/women/41.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
richmond_group.users << user

user = User.new(
  email: 'matilda.tikkanen@example.com',
  password: '109c9a2ecbf9cb21',
  first_name: 'Matilda',
  last_name: 'Tikkanen',
  nickname: 'lazycat570',
  bio: 'Fitness freak. Dog person. DIY enthusiast.',
  due_date: '2024-11-13',
  post_code: '3000',
  parent_experience: 3,
  is_mentor: true
)
file = URI.open('https://randomuser.me/api/portraits/women/14.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
richmond_group.users << user

user = User.new(
  email: 'eva.turner@example.com',
  password: 'ef825f489f8df504',
  first_name: 'Eva',
  last_name: 'Turner',
  nickname: 'redcat850',
  bio: 'Art lover. Wanderlust. Coffee snob.',
  due_date: '2024-10-05',
  post_code: '3000',
  parent_experience: 2,
  is_mentor: true
)
file = URI.open('https://randomuser.me/api/portraits/women/56.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
richmond_group.users << user

user = User.new(
  email: 'sofia.daniels@example.com',
  password: '9ba41437ff0a9241',
  first_name: 'Sofia',
  last_name: 'Daniels',
  nickname: 'happymeercat934',
  bio: 'Fashionista. Food blogger. Beach bum.',
  due_date: '2024-12-31',
  post_code: '3000',
  parent_experience: 7,
  is_mentor: true
)
file = URI.open('https://randomuser.me/api/portraits/women/46.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
richmond_group.users << user

user = User.new(
  email: 'dorle.burkart@example.com',
  password: '74c68dde9b5cd1a6',
  first_name: 'Dorle',
  last_name: 'Burkart',
  nickname: 'goldendog306',
  bio: 'Movie buff. Wine connoisseur. Nature lover.',
  due_date: '2025-03-19',
  post_code: '3000',
  parent_experience: 8,
  is_mentor: true
)
file = URI.open('https://randomuser.me/api/portraits/women/90.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
richmond_group.users << user

user = User.new(
  email: 'zakaria.wopereis@example.com',
  password: '824a944a6fe16662',
  first_name: 'Zakaria',
  last_name: 'Wopereis',
  nickname: 'redlion274',
  bio: 'Photography enthusiast. Foodie. Travel addict.',
  due_date: '2024-07-11',
  post_code: '3000',
  parent_experience: 6,
  is_mentor: true
)
file = URI.open('https://randomuser.me/api/portraits/women/23.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
richmond_group.users << user

puts 'Creating 50 parent users...'
# 50 parent users

user = User.new(
  email: 'yolanda.jimenez@example.com',
  password: '48a50425f9532c6a',
  first_name: 'Yolanda',
  last_name: 'Jiménez',
  nickname: 'redsnake623',
  bio: 'Yoga enthusiast. Animal lover. Mindfulness advocate.',
  due_date: '2024-05-22',
  post_code: '3001',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/62.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
melbourne_group.users << user

user = User.new(
  email: 'virginia.molina@example.com',
  password: '0be43cf0a7d1fc19',
  first_name: 'Virginia',
  last_name: 'Molina',
  nickname: 'ticklishostrich367',
  bio: 'Gamer. Anime fan. Ramen addict.',
  due_date: '2024-09-15',
  post_code: '3023',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/51.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
melbourne_group.users << user

user = User.new(
  email: 'ulku.ertepinar@example.com',
  password: '2038bfe1d4be38c3',
  first_name: 'Lulu',
  last_name: 'Ertepinar',
  nickname: 'heavygorilla217',
  bio: 'Sports fanatic. BBQ enthusiast. Beer lover.',
  due_date: '2024-05-27',
  post_code: '3015',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/85.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
melbourne_group.users << user

user = User.new(
  email: 'hannah.sirko@example.com',
  password: 'e9fb8b48fa01a35d',
  first_name: 'Hannah',
  last_name: 'Sirko',
  nickname: 'organicswan636',
  bio: 'Entrepreneur. Fitness enthusiast. Dog parent.',
  due_date: '2024-07-17',
  post_code: '3025',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/52.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
brisbane_group.users << user

user = User.new(
  email: 'alexandra.may@example.com',
  password: '74b4e705e3f4326b',
  first_name: 'Alexandra',
  last_name: 'May',
  nickname: 'orangetiger439',
  bio: 'Minimalist. Environmentalist. Adventure seeker.',
  due_date: '2024-05-01',
  post_code: '3026',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/18.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
brisbane_group.users << user

user = User.new(
  email: 'queenie.fennema@example.com',
  password: 'fb697332107c80ec',
  first_name: 'Queenie',
  last_name: 'Fennema',
  nickname: 'yellowgorilla839',
  bio: 'Poetry lover. Coffee addict. Dream chaser.',
  due_date: '2025-03-27',
  post_code: '3003',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/20.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
brisbane_group.users << user

user = User.new(
  email: 'consuelo.castro@example.com',
  password: '563abc4246f656ea',
  first_name: 'Consuelo',
  last_name: 'Castro',
  nickname: 'heavyladybug150',
  bio: 'Plant mom. Foodie. DIY enthusiast.',
  due_date: '2025-01-12',
  post_code: '3009',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/51.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
brisbane_group.users << user

user = User.new(
  email: 'tracy.stephens@example.com',
  password: '96eb585c46f676fc',
  first_name: 'Tracy',
  last_name: 'Stephens',
  nickname: 'happymeercat494',
  bio: 'Tech nerd. Music aficionado. Coffee addict.',
  due_date: '2024-10-28',
  post_code: '3013',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/41.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
brisbane_group.users << user

user = User.new(
  email: 'elisa.marquez@example.com',
  password: '45fe82c0cb125427',
  first_name: 'Elisa',
  last_name: 'Marquez',
  nickname: 'ticklishzebra196',
  bio: 'Fitness enthusiast. Travel junkie. Food lover.',
  due_date: '2024-07-18',
  post_code: '3014',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/95.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
brisbane_group.users << user

user = User.new(
  email: 'sofia.shaw@example.com',
  password: '668afa08aa5b06ff',
  first_name: 'Sofia',
  last_name: 'Shaw',
  nickname: 'crazypanda479',
  bio: 'Bookworm. Coffee addict. Wanderlust.',
  due_date: '2024-04-28',
  post_code: '3141',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/22.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
south_yarra_group.users << user

user = User.new(
  email: 'rebecca.hestetun@example.com',
  password: '491f6cd113aa450c',
  first_name: 'Rebecca',
  last_name: 'Hestetun',
  nickname: 'beautifulkoala469',
  bio: 'Movie buff. Pizza lover. Cat person.',
  due_date: '2024-09-28',
  post_code: '3141',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/94.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
south_yarra_group.users << user

user = User.new(
  email: 'sarah.clarke@example.com',
  password: 'f41fe3745f653847',
  first_name: 'Sarah',
  last_name: 'Clarke',
  nickname: 'sadbird550',
  bio: 'Art lover. Nature enthusiast. Coffee addict.',
  due_date: '2024-07-11',
  post_code: '3141',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/36.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
south_yarra_group.users << user

user = User.new(
  email: 'anzhelika.gaydamaha@example.com',
  password: '8e6de28d04cada39',
  first_name: 'Anzhelika',
  last_name: 'Gaydamaha',
  nickname: 'goldendog902',
  bio: 'Fashion lover. Foodie. Traveler.',
  due_date: '2025-01-07',
  post_code: '3141',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/48.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
south_yarra_group.users << user

user = User.new(
  email: 'amy.sollid@example.com',
  password: 'a9ccccec77a3ff4d',
  first_name: 'Amy',
  last_name: 'Sollid',
  nickname: 'organicmeercat223',
  bio: 'Gamer. Anime fan. Pizza enthusiast.',
  due_date: '2024-10-06',
  post_code: '3141',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/6.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
south_yarra_group.users << user

user = User.new(
  email: 'byt.glshn@example.com',
  password: '8c6d0352a3919c04',
  first_name: 'Bty',
  last_name: 'Glashn',
  nickname: 'sadfish552',
  bio: 'Sports fanatic. Dog lover. BBQ enthusiast.',
  due_date: '2024-08-28',
  post_code: '3020',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/44.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'catherine.renard@example.com',
  password: 'ef9936d3e0f4d8a3',
  first_name: 'Catherine',
  last_name: 'Renard',
  nickname: 'bluebear577',
  bio: 'Entrepreneur. Fitness enthusiast. Coffee addict.',
  due_date: '2024-12-21',
  post_code: '3001',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/50.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'larisa.monsma@example.com',
  password: '33958bd7e9307550',
  first_name: 'Larisa',
  last_name: 'Monsma',
  nickname: 'purpleelephant768',
  bio: 'Minimalist. Environmentalist. Adventure lover.',
  due_date: '2024-06-06',
  post_code: '3010',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/29.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'mariaelena.gallegos@example.com',
  password: '37fc3c6e92fb6837',
  first_name: 'María Elena',
  last_name: 'Gallegos',
  nickname: 'beautifulelephant172',
  bio: 'Poetry enthusiast. Coffee addict. Dreamer.',
  due_date: '2024-09-18',
  post_code: '3022',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/69.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'zilena.dacruz@example.com',
  password: 'b97504886de7b2d4',
  first_name: 'Zilena',
  last_name: 'da Cruz',
  nickname: 'orangerabbit810',
  bio: 'Plant lover. Foodie. DIYer.',
  due_date: '2024-06-15',
  post_code: '3007',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/83.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'ruby.galvan@example.com',
  password: '3279f8c8fea99439',
  first_name: 'Ruby',
  last_name: 'Galván',
  nickname: 'bigzebra597',
  bio: 'Tech geek. Music lover. Coffee enthusiast.',
  due_date: '2024-06-25',
  post_code: '3000',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/34.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
melbourne_group.users << user

user = User.new(
  email: 'dragica.dasilva@example.com',
  password: '07cfc04038c85617',
  first_name: 'Dragica',
  last_name: 'Da Silva',
  nickname: 'heavymeercat375',
  bio: 'Fitness addict. Travel lover. Foodie.',
  due_date: '2024-09-07',
  post_code: '3016',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/3.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'ftmhzhr.zraay@example.com',
  password: '841f9017332bda39',
  first_name: 'Ftmhzhr',
  last_name: 'Zraay',
  nickname: 'orangedog862',
  bio: 'Bookworm. Coffee lover. Wanderer.',
  due_date: '2025-01-01',
  post_code: '3028',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/51.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'olivia.cote@example.com',
  password: 'f3fdb9a10de13258',
  first_name: 'Olivia',
  last_name: 'Côté',
  nickname: 'lazyostrich817',
  bio: 'Movie enthusiast. Pizza lover. Cat lover.',
  due_date: '2024-08-24',
  post_code: '3027',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/75.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'vanessa.schmitt@example.com',
  password: 'd3bb4edb0c5aa475',
  first_name: 'Vanessa',
  last_name: 'Schmitt',
  nickname: 'beautifulbutterfly436',
  bio: 'Art enthusiast. Nature lover. Coffee lover.',
  due_date: '2024-07-29',
  post_code: '3000',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/60.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'amy.gauthier@example.com',
  password: '61cb5ec513e6ab31',
  first_name: 'Amy',
  last_name: 'Gauthier',
  nickname: 'purplelion742',
  bio: 'Fashionista. Foodie. Traveler.',
  due_date: '2024-06-04',
  post_code: '3006',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/26.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'noelia.leroux@example.com',
  password: 'd8fe78ef109fa558',
  first_name: 'Noelia',
  last_name: 'Leroux',
  nickname: 'blackbird636',
  bio: 'Gamer. Anime enthusiast. Pizza lover.',
  due_date: '2025-01-01',
  post_code: '2018',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/73.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
sydney_group.users << user

user = User.new(
  email: 'lesa.horton@example.com',
  password: '10d8e3a290f6153a',
  first_name: 'Lesa',
  last_name: 'Horton',
  nickname: 'yellowcat795',
  bio: 'Sports lover. Dog person. BBQ enthusiast.',
  due_date: '2024-07-11',
  post_code: '2022',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/83.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
sydney_group.users << user

user = User.new(
  email: 'khymy.rdyy@example.com',
  password: 'e8f55feea0ec29f3',
  first_name: 'Khymy',
  last_name: 'Rdyy',
  nickname: 'happyzebra524',
  bio: 'Entrepreneur. Fitness fanatic. Coffee lover.',
  due_date: '2024-10-10',
  post_code: '2003',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/44.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
sydney_group.users << user

user = User.new(
  email: 'anita.almeida@example.com',
  password: 'b841d3309ede507f',
  first_name: 'Anita',
  last_name: 'Almeida',
  nickname: 'tinykoala483',
  bio: 'Minimalist. Environmentalist. Adventurer.',
  due_date: '2024-05-05',
  post_code: '2011',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/41.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
sydney_group.users << user

user = User.new(
  email: 'viviana.daconceicao@example.com',
  password: 'ba024f647b644374',
  first_name: 'Viviana',
  last_name: 'da Conceição',
  nickname: 'whitegoose169',
  bio: 'Poetry lover. Coffee lover. Dreamer.',
  due_date: '2024-05-04',
  post_code: '2004',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/5.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'alexis.ma@example.com',
  password: '4463ad3174027afb',
  first_name: 'Alexis',
  last_name: 'Ma',
  nickname: 'smallelephant849',
  bio: 'Plant lover. Foodie. DIY enthusiast.',
  due_date: '2024-06-24',
  post_code: '2017',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/80.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'celin.selvik@example.com',
  password: '857f5e437ea074ca',
  first_name: 'Celin',
  last_name: 'Selvik',
  nickname: 'blackpeacock299',
  bio: 'Tech enthusiast. Music lover. Coffee addict.',
  due_date: '2024-05-17',
  post_code: '2004',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/3.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'yld.slry@example.com',
  password: 'd68e305505acb1dc',
  first_name: 'Yld',
  last_name: 'Slry',
  nickname: 'organicwolf606',
  bio: 'Fitness fanatic. Travel enthusiast. Foodie.',
  due_date: '2024-09-11',
  post_code: '2000',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/2.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'savannah.taylor@example.com',
  password: '922f86aafe73b4be',
  first_name: 'Savannah',
  last_name: 'Taylor',
  nickname: 'organiclion848',
  bio: 'Bookworm. Coffee addict. Wanderlust.',
  due_date: '2025-02-21',
  post_code: '2030',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/61.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'kubra.arslanoglu@example.com',
  password: '7d0e36d6c517067b',
  first_name: 'Kubra',
  last_name: 'Arslanoğlu',
  nickname: 'sadduck588',
  bio: 'Movie buff. Pizza enthusiast. Cat person.',
  due_date: '2024-12-25',
  post_code: '2001',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/1.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'andrea.christensen@example.com',
  password: '938ff3a805562c0c',
  first_name: 'Andrea',
  last_name: 'Christensen',
  nickname: 'beautifulmouse905',
  bio: 'Art lover. Nature enthusiast. Coffee addict.',
  due_date: '2025-01-06',
  post_code: '2004',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/17.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'emilie.christiansen@example.com',
  password: '617ae3f59511f8c2',
  first_name: 'Emilie',
  last_name: 'Christiansen',
  nickname: 'blueswan783',
  bio: 'Fashionista. Foodie. Travel junkie.',
  due_date: '2025-01-12',
  post_code: '2029',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/94.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'geerte.koks@example.com',
  password: 'bd765340dcba7784',
  first_name: 'Geerte',
  last_name: 'Koks',
  nickname: 'crazybear204',
  bio: 'Gamer. Anime fan. Ramen lover.',
  due_date: '2025-01-13',
  post_code: '2017',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/91.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'jill.fisher@example.com',
  password: 'efe3eafd8341c5c2',
  first_name: 'Jill',
  last_name: 'Fisher',
  nickname: 'heavyswan642',
  bio: 'Sports fan. Dog lover. BBQ aficionado.',
  due_date: '2024-12-08',
  post_code: '2003',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/42.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'marilene.nogueira@example.com',
  password: '54bd8cd9a8a1d3c1',
  first_name: 'Marilene',
  last_name: 'Nogueira',
  nickname: 'silverlion181',
  bio: 'Entrepreneur. Fitness enthusiast. Dog lover.',
  due_date: '2025-01-07',
  post_code: '2012',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/82.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'martha.carrasco@example.com',
  password: '2cb1aa88e028065e',
  first_name: 'Martha',
  last_name: 'Carrasco',
  nickname: 'blackostrich621',
  bio: 'Minimalist. Environmentalist. Adventure seeker.',
  due_date: '2024-10-22',
  post_code: '2019',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/79.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'summer.martin@example.com',
  password: '6fd28af8def7191e',
  first_name: 'Summer',
  last_name: 'Martin',
  nickname: 'ticklishostrich743',
  bio: 'Poetry lover. Coffee addict. Dreamer.',
  due_date: '2024-09-07',
  post_code: '2026',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/52.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'cathy.howell@example.com',
  password: 'ab1c2fe3b8750988',
  first_name: 'Cathy',
  last_name: 'Howell',
  nickname: 'smalldog670',
  bio: 'Plant mom. Foodie. DIY enthusiast.',
  due_date: '2024-06-12',
  post_code: '2012',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/69.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'deborah.ellis@example.com',
  password: '4c239a336d3865ea',
  first_name: 'Deborah',
  last_name: 'Ellis',
  nickname: 'whitemouse215',
  bio: 'Tech geek. Music aficionado. Coffee lover.',
  due_date: '2024-12-13',
  post_code: '2012',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/13.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'sedef.yildirim@example.com',
  password: '18ccdaba1d5cbcc2',
  first_name: 'Sedef',
  last_name: 'Yildirim',
  nickname: 'sadostrich959',
  bio: 'Fitness enthusiast. Travel junkie. Food lover.',
  due_date: '2024-09-04',
  post_code: '2022',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/14.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'mercia.dacruz@example.com',
  password: 'f806e297b88dde33',
  first_name: 'Mercia',
  last_name: 'da Cruz',
  nickname: 'orangedog185',
  bio: 'Bookworm. Coffee addict. Wanderlust.',
  due_date: '2025-04-27',
  post_code: '2007',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/42.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'lana.dasilva@example.com',
  password: 'd5dbacbcbe0b4e60',
  first_name: 'Lana',
  last_name: 'Da Silva',
  nickname: 'beautifulduck998',
  bio: 'Movie buff. Pizza lover. Cat person.',
  due_date: '2024-09-23',
  post_code: '2023',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/88.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'ida.ramsoy@example.com',
  password: '29c15f54afc130a2',
  first_name: 'Ida',
  last_name: 'Ramsøy',
  nickname: 'organicbutterfly786',
  bio: 'Art lover. Nature enthusiast. Coffee addict.',
  due_date: '2024-11-06',
  post_code: '2000',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/62.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!

user = User.new(
  email: 'carolina.luhrs@example.com',
  password: '909c33b6296facac',
  first_name: 'Carolina',
  last_name: 'Luhrs',
  nickname: 'heavycat911',
  bio: 'Fashion lover. Foodie. Traveler.',
  due_date: '2024-08-30',
  post_code: '3141',
  parent_experience: 0
)
file = URI.open('https://randomuser.me/api/portraits/women/19.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
south_yarra_group.users << user

user = User.new(
  email: 'rubyonrails@example.com',
  password: '4760dda2b293b978',
  first_name: 'Ruby',
  last_name: 'Railson',
  nickname: 'RubyOnRails',
  bio: 'I have a 2 year old daughter and a 4 year old son. My hobbies are surfing and yoga. Every morning I take a walk along the beach with my children.',
  due_date: '2022-11-29',
  post_code: '3141',
  parent_experience: 4
)
file = URI.open('https://randomuser.me/api/portraits/women/87.jpg')
user.photo.attach(io: file, filename: "user.png", content_type: "image/png")
user.save!
prahran_group.users << user

puts 'All done!'
