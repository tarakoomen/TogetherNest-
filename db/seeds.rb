require 'faker'

User.destroy_all

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
  "Sports fanatic. Dog lover. BBQ enthusiast.",
  "Entrepreneur. Fitness enthusiast. Coffee addict.",
  "Minimalist. Environmentalist. Adventure lover.",
  "Poetry enthusiast. Coffee addict. Dreamer.",
  "Plant lover. Foodie. DIYer."
];

user = User.create!(
  email: 'makivka.shepelyuk@example.com',
  password: 'dd310ac9b99dfead',
  first_name: 'Makivka',
  last_name: 'Shepelyuk',
  nickname: 'bigelephant834',
  bio: 'scale collaborative channels',
  due_date: '2025-02-24',
  post_code: '2008',
  parent_experience: 1,
  is_mentor: true,
  joined_mentor_program: true
)
user = User.create!(
  email: 'isobel.hart@example.com',
  password: 'be2a300fe7b0e970',
  first_name: 'Isobel',
  last_name: 'Hart',
  nickname: 'orangebear907',
  bio: 'architect rich ROI',
  due_date: '2024-05-23',
  post_code: '2003',
  parent_experience: 2,
  is_mentor: true,
  joined_mentor_program: true
)
user = User.create!(
  email: 'nevaeh.hicks@example.com',
  password: '53873bd319fec6a8',
  first_name: 'Nevaeh',
  last_name: 'Hicks',
  nickname: 'redduck991',
  bio: 'leverage web-enabled web services',
  due_date: '2024-12-17',
  post_code: '2001',
  parent_experience: 10,
  is_mentor: true,
  joined_mentor_program: true
)
user = User.create!(
  email: 'veera.palo@example.com',
  password: '3d0d5c047666e3c8',
  first_name: 'Veera',
  last_name: 'Palo',
  nickname: 'goldengoose535',
  bio: 'e-enable innovative e-markets',
  due_date: '2024-05-19',
  post_code: '2008',
  parent_experience: 7,
  is_mentor: true,
  joined_mentor_program: true
)
user = User.create!(
  email: 'shravya.kini@example.com',
  password: '9bb688670872d319',
  first_name: 'Shravya',
  last_name: 'Kini',
  nickname: 'beautifulleopard740',
  bio: 'transform end-to-end interfaces',
  due_date: '2024-08-15',
  post_code: '2005',
  parent_experience: 2,
  is_mentor: true,
  joined_mentor_program: true
)

# meruborun
user = User.create!(
  email: 'sonia.manzanares@example.com',
  password: '59069bb8eb8e1201',
  first_name: 'Sonia',
  last_name: 'Manzanares',
  nickname: 'smallcat831',
  bio: 'envisioneer ubiquitous communities',
  due_date: '2024-09-25',
  post_code: '3009',
  parent_experience: 8,
  is_mentor: true,
  joined_mentor_program: true
)
user = User.create!(
  email: 'avery.curtis@example.com',
  password: 'faeb9e175ab5d840',
  first_name: 'Avery',
  last_name: 'Curtis',
  nickname: 'goldenpeacock705',
  bio: 'deliver front-end technologies',
  due_date: '2024-06-16',
  post_code: '3008',
  parent_experience: 3,
  is_mentor: true,
  joined_mentor_program: true
)
user = User.create!(
  email: 'kathi.theisen@example.com',
  password: '4c703239bde8ebe2',
  first_name: 'Kathi',
  last_name: 'Theisen',
  nickname: 'purpledog313',
  bio: 'enable turn-key markets',
  due_date: '2024-08-14',
  post_code: '3004',
  parent_experience: 10,
  is_mentor: true,
  joined_mentor_program: true
)
user = User.create!(
  email: 'josephine.carlson@example.com',
  password: '5373a0fa8dbf00b4',
  first_name: 'Josephine',
  last_name: 'Carlson',
  nickname: 'sadbird166',
  bio: 'scale dot-com paradigms',
  due_date: '2025-02-08',
  post_code: '3000',
  parent_experience: 10,
  is_mentor: true,
  joined_mentor_program: true
)
user = User.create!(
  email: 'lucineri.moraes@example.com',
  password: '6f57610827b26aae',
  first_name: 'Lucineri',
  last_name: 'Moraes',
  nickname: 'purplepeacock245',
  bio: 'extend 24/7 deliverables',
  due_date: '2024-12-28',
  post_code: '3006',
  parent_experience: 8,
  is_mentor: true,
  joined_mentor_program: true
)

#Sydney 25 new users

user = User.create!(
  email: 'anamaria.pineda@example.com',
  password: 'df49302ac412ac48',
  first_name: 'Ana María',
  last_name: 'Pineda',
  nickname: 'blacktiger971',
  bio: 'maximize plug-and-play infrastructures',
  due_date: '2024-10-04',
  post_code: '2008',
  parent_experience: 0,
)
user = User.create!(
  email: 'elif.bayindir@example.com',
  password: '3bba35a32a1d4d73',
  first_name: 'Elif',
  last_name: 'Bayındır',
  nickname: 'heavylion721',
  bio: 'engineer front-end infomediaries',
  due_date: '2024-07-19',
  post_code: '2010',
  parent_experience: 0,
)
user = User.create!(
  email: 'ditta.exterkate@example.com',
  password: '121b099bc1dc294c',
  first_name: 'Ditta',
  last_name: 'Exterkate',
  nickname: 'beautifulgoose365',
  bio: 'evolve plug-and-play e-business',
  due_date: '2024-10-31',
  post_code: '2030',
  parent_experience: 0,
)
user = User.create!(
  email: 'sapna.bhoja@example.com',
  password: '6044f3bfa58c4406',
  first_name: 'Sapna',
  last_name: 'Bhoja',
  nickname: 'smallmouse376',
  bio: 'incentivize bricks-and-clicks applications',
  due_date: '2025-02-04',
  post_code: '2018',
  parent_experience: 0,
)
user = User.create!(
  email: 'nina.sas@example.com',
  password: '20f93e846b3fd7b1',
  first_name: 'Nina',
  last_name: 'Sas',
  nickname: 'bluemeercat947',
  bio: 'leverage scalable applications',
  due_date: '2024-05-11',
  post_code: '2022',
  parent_experience: 0,
)
user = User.create!(
  email: 'lucie.faure@example.com',
  password: 'e20bb63faa0f8150',
  first_name: 'Lucie',
  last_name: 'Faure',
  nickname: 'bluerabbit259',
  bio: 'unleash integrated portals',
  due_date: '2024-12-07',
  post_code: '2006',
  parent_experience: 0,
)
user = User.create!(
  email: 'phoebe.thomas@example.com',
  password: '909d830d45f68356',
  first_name: 'Phoebe',
  last_name: 'Thomas',
  nickname: 'orangecat377',
  bio: 'morph bricks-and-clicks models',
  due_date: '2025-02-24',
  post_code: '2012',
  parent_experience: 0,
)
user = User.create!(
  email: 'viivi.niemi@example.com',
  password: 'e942cb1662af3b89',
  first_name: 'Viivi',
  last_name: 'Niemi',
  nickname: 'whitepeacock742',
  bio: 'brand strategic niches',
  due_date: '2025-03-17',
  post_code: '2014',
  parent_experience: 0,
)
user = User.create!(
  email: 'willow.zhang@example.com',
  password: 'f1b662a108f46af5',
  first_name: 'Willow',
  last_name: 'Zhang',
  nickname: 'happylion388',
  bio: 'engage holistic technologies',
  due_date: '2024-12-16',
  post_code: '2006',
  parent_experience: 0,
)
user = User.create!(
  email: 'tonya.spencer@example.com',
  password: '5cc67758840d6e10',
  first_name: 'Tonya',
  last_name: 'Spencer',
  nickname: 'goldenladybug116',
  bio: 'productize 24/365 convergence',
  due_date: '2025-04-02',
  post_code: '2000',
  parent_experience: 0,
)
user = User.create!(
  email: 'sofie.brandl@example.com',
  password: '6580bb56fd4b1a67',
  first_name: 'Sofie',
  last_name: 'Brandl',
  nickname: 'heavytiger406',
  bio: 'recontextualize vertical users',
  due_date: '2024-06-12',
  post_code: '2013',
  parent_experience: 0,
)
user = User.create!(
  email: 'laura.andersen@example.com',
  password: '3872b507c20d6930',
  first_name: 'Laura',
  last_name: 'Andersen',
  nickname: 'orangewolf515',
  bio: 'visualize robust schemas',
  due_date: '2024-09-05',
  post_code: '2030',
  parent_experience: 0,
)
user = User.create!(
  email: 'elif.sayginer@example.com',
  password: '53c471b427cb4aff',
  first_name: 'Elif',
  last_name: 'Saygıner',
  nickname: 'sadelephant758',
  bio: 'productize back-end mindshare',
  due_date: '2024-11-16',
  post_code: '2006',
  parent_experience: 0,
)
user = User.create!(
  email: 'leah.turner@example.com',
  password: '5307aeb40d86a532',
  first_name: 'Leah',
  last_name: 'Turner',
  nickname: 'blackbird554',
  bio: 'leverage front-end applications',
  due_date: '2024-12-04',
  post_code: '2015',
  parent_experience: 0,
)
user = User.create!(
  email: 'sharanya.salian@example.com',
  password: '30f9bf64bb97d291',
  first_name: 'Sharanya',
  last_name: 'Salian',
  nickname: 'yellowpanda592',
  bio: 'aggregate front-end eyeballs',
  due_date: '2024-12-18',
  post_code: '2006',
  parent_experience: 0,
)
user = User.create!(
  email: 'tetyana.demidchuk@example.com',
  password: 'aa57b363a87d8acf',
  first_name: 'Tetyana',
  last_name: 'Demidchuk',
  nickname: 'goldensnake403',
  bio: 'incubate collaborative vortals',
  due_date: '2024-05-20',
  post_code: '2028',
  parent_experience: 0,
)
user = User.create!(
  email: 'erdmute.holzapfel@example.com',
  password: 'a3e79445c4b761d9',
  first_name: 'Erdmute',
  last_name: 'Holzapfel',
  nickname: 'yellowlion366',
  bio: 'monetize scalable deliverables',
  due_date: '2024-07-31',
  post_code: '2019',
  parent_experience: 0,
)
user = User.create!(
  email: 'lucy.evans@example.com',
  password: '50104999d4123466',
  first_name: 'Lucy',
  last_name: 'Evans',
  nickname: 'goldenlion984',
  bio: 'deploy back-end deliverables',
  due_date: '2024-07-15',
  post_code: '2015',
  parent_experience: 0,
)
user = User.create!(
  email: 'consuelo.ferrer@example.com',
  password: '6cd3275aa5e7cf1c',
  first_name: 'Consuelo',
  last_name: 'Ferrer',
  nickname: 'lazymouse293',
  bio: 'implement cutting-edge networks',
  due_date: '2024-04-30',
  post_code: '2019',
  parent_experience: 0,
)
user = User.create!(
  email: 'marcia.bates@example.com',
  password: 'f4f6ebeb4929ab50',
  first_name: 'Marcia',
  last_name: 'Bates',
  nickname: 'heavyostrich484',
  bio: 'utilize interactive e-business',
  due_date: '2024-05-26',
  post_code: '2016',
  parent_experience: 0,
)
user = User.create!(
  email: 'pearl.bailey@example.com',
  password: '108274b7fc73eaf9',
  first_name: 'Pearl',
  last_name: 'Bailey',
  nickname: 'organicdog526',
  bio: 'generate frictionless users',
  due_date: '2025-02-03',
  post_code: '2024',
  parent_experience: 0,
)
user = User.create!(
  email: 'dorothea.carstens@example.com',
  password: '152e37583835f77f',
  first_name: 'Dorothea',
  last_name: 'Carstens',
  nickname: 'crazymouse103',
  bio: 'whiteboard sexy communities',
  due_date: '2024-10-29',
  post_code: '2023',
  parent_experience: 0,
)
user = User.create!(
  email: 'carrie.frazier@example.com',
  password: 'e671525cf5132765',
  first_name: 'Carrie',
  last_name: 'Frazier',
  nickname: 'whitebear426',
  bio: 'integrate frictionless experiences',
  due_date: '2024-04-29',
  post_code: '2027',
  parent_experience: 0,
)
user = User.create!(
  email: 'emma.lehto@example.com',
  password: 'bbfbdc2dbd620855',
  first_name: 'Emma',
  last_name: 'Lehto',
  nickname: 'greenostrich257',
  bio: 'benchmark efficient functionalities',
  due_date: '2024-08-07',
  post_code: '2005',
  parent_experience: 0,
)
user = User.create!(
  email: 'jacqueline.romero@example.com',
  password: 'ad259346358c7a8d',
  first_name: 'Jacqueline',
  last_name: 'Romero',
  nickname: 'redbear222',
  bio: 'expedite sticky niches',
  due_date: '2024-07-27',
  post_code: '2001',
  parent_experience: 0,
)

# Melubourn 25 new users
user = User.create!(
  email: 'sanne.rodsjo@example.com',
  password: '163b43b1a4c18975',
  first_name: 'Sanne',
  last_name: 'Rødsjø',
  nickname: 'ticklishwolf339',
  bio: 'matrix granular web services',
  due_date: '2024-12-06',
  post_code: '3005',
  parent_experience: 0,
)
user = User.create!(
  email: 'sudislava.govdya@example.com',
  password: 'f3a4d6af23e781af',
  first_name: 'Sudislava',
  last_name: 'Govdya',
  nickname: 'organicsnake449',
  bio: 'implement strategic web-readiness',
  due_date: '2024-10-31',
  post_code: '3017',
  parent_experience: 0,
)
user = User.create!(
  email: 'nadezda.ivic@example.com',
  password: 'a863aef5d0ffaecd',
  first_name: 'Nadežda',
  last_name: 'Ivić',
  nickname: 'brownladybug331',
  bio: 'architect synergistic niches',
  due_date: '2024-06-14',
  post_code: '3012',
  parent_experience: 0,
)
user = User.create!(
  email: 'hannelore.freyer@example.com',
  password: 'd00aec175dff8cbe',
  first_name: 'Hannelore',
  last_name: 'Freyer',
  nickname: 'whitebutterfly674',
  bio: 'reinvent visionary supply-chains',
  due_date: '2024-10-11',
  post_code: '3005',
  parent_experience: 0,
)
user = User.create!(
  email: 'isobel.edwards@example.com',
  password: 'f1609bd1f0c100c7',
  first_name: 'Isobel',
  last_name: 'Edwards',
  nickname: 'bluebutterfly125',
  bio: 'incentivize compelling platforms',
  due_date: '2024-12-01',
  post_code: '3014',
  parent_experience: 0,
)
user = User.create!(
  email: 'emmi.kemppainen@example.com',
  password: '987aa6e2edb6e123',
  first_name: 'Emmi',
  last_name: 'Kemppainen',
  nickname: 'biglion766',
  bio: 'empower vertical eyeballs',
  due_date: '2024-05-04',
  post_code: '3005',
  parent_experience: 0,
)
user = User.create!(
  email: 'elif.denkel@example.com',
  password: 'ba9634bafecc07fd',
  first_name: 'Elif',
  last_name: 'Denkel',
  nickname: 'silverrabbit323',
  bio: 'enhance frictionless interfaces',
  due_date: '2024-07-29',
  post_code: '3012',
  parent_experience: 0,
)
user = User.create!(
  email: 'margie.hoffman@example.com',
  password: 'f662df35413f4f98',
  first_name: 'Margie',
  last_name: 'Hoffman',
  nickname: 'goldenwolf533',
  bio: 'enhance synergistic partnerships',
  due_date: '2024-11-11',
  post_code: '3006',
  parent_experience: 0,
)
user = User.create!(
  email: 'olja.karadzic@example.com',
  password: '1b613efcfcfdad05',
  first_name: 'Olja',
  last_name: 'Karadžić',
  nickname: 'blackpanda862',
  bio: 'evolve plug-and-play architectures',
  due_date: '2024-08-25',
  post_code: '3018',
  parent_experience: 0,
)
user = User.create!(
  email: 'catherine.watts@example.com',
  password: '0b1ceb06fba7ac8c',
  first_name: 'Catherine',
  last_name: 'Watts',
  nickname: 'smallduck176',
  bio: 'incubate clicks-and-mortar systems',
  due_date: '2025-03-08',
  post_code: '3018',
  parent_experience: 0,
)
user = User.create!(
  email: 'emma.laurila@example.com',
  password: 'a0440756816c71fd',
  first_name: 'Emma',
  last_name: 'Laurila',
  nickname: 'silversnake115',
  bio: 'target revolutionary experiences',
  due_date: '2024-07-12',
  post_code: '3018',
  parent_experience: 0,
)
user = User.create!(
  email: 'rosario.cabrera@example.com',
  password: '722c42f01fdb4b29',
  first_name: 'Rosario',
  last_name: 'Cabrera',
  nickname: 'yellowduck689',
  bio: 'matrix distributed e-markets',
  due_date: '2025-03-12',
  post_code: '3017',
  parent_experience: 0,
)
user = User.create!(
  email: 'julia.jimenez@example.com',
  password: '2ad44fce8cdad443',
  first_name: 'Julia',
  last_name: 'Jimenez',
  nickname: 'goldenrabbit646',
  bio: 'syndicate revolutionary supply-chains',
  due_date: '2024-09-26',
  post_code: '3011',
  parent_experience: 0,
)
user = User.create!(
  email: 'hristina.bachinskiy@example.com',
  password: 'b7e78f8c4167bdce',
  first_name: 'Hristina',
  last_name: 'Bachinskiy',
  nickname: 'blueduck973',
  bio: 'visualize distributed supply-chains',
  due_date: '2024-08-24',
  post_code: '3026',
  parent_experience: 0,
)
user = User.create!(
  email: 'lisa.white@example.com',
  password: 'f687370f06c86d1d',
  first_name: 'Lisa',
  last_name: 'White',
  nickname: 'redmeercat761',
  bio: 'strategize extensible synergies',
  due_date: '2025-02-08',
  post_code: '3021',
  parent_experience: 0,
)
user = User.create!(
  email: 'julie.rodriguez@example.com',
  password: '83dd39da77934795',
  first_name: 'Julie',
  last_name: 'Rodriguez',
  nickname: 'smallgorilla944',
  bio: 'deploy viral mindshare',
  due_date: '2024-10-05',
  post_code: '3013',
  parent_experience: 0,
)
user = User.create!(
  email: 'candela.desouza@example.com',
  password: '7e4dea911cc728f9',
  first_name: 'Candela',
  last_name: 'de Souza',
  nickname: 'whitemouse681',
  bio: 'expedite turn-key models',
  due_date: '2024-05-31',
  post_code: '3029',
  parent_experience: 0,
)
user = User.create!(
  email: 'alexia.dupuis@example.com',
  password: '028c95f7146d0513',
  first_name: 'Alexia',
  last_name: 'Dupuis',
  nickname: 'brownmeercat685',
  bio: 'seize back-end infomediaries',
  due_date: '2025-01-09',
  post_code: '3011',
  parent_experience: 0,
)
user = User.create!(
  email: 'lia.bergstrom@example.com',
  password: '7ceee3014909d51e',
  first_name: 'Lia',
  last_name: 'Bergstrøm',
  nickname: 'angrykoala820',
  bio: 'brand 24/365 e-commerce',
  due_date: '2024-11-14',
  post_code: '3023',
  parent_experience: 0,
)
user = User.create!(
  email: 'marita.lex@example.com',
  password: 'dfa9db4de5c9c78b',
  first_name: 'Marita',
  last_name: 'Lex',
  nickname: 'crazyfrog520',
  bio: 'cultivate innovative e-commerce',
  due_date: '2024-05-04',
  post_code: '3026',
  parent_experience: 0,
)
user = User.create!(
  email: 'virginia.gallardo@example.com',
  password: 'e97e264c83b3be17',
  first_name: 'Virginia',
  last_name: 'Gallardo',
  nickname: 'yellowmeercat364',
  bio: 'leverage killer synergies',
  due_date: '2025-03-20',
  post_code: '3005',
  parent_experience: 0,
)
user = User.create!(
  email: 'marilou.sirko@example.com',
  password: '50974d69dece050c',
  first_name: 'Marilou',
  last_name: 'Sirko',
  nickname: 'sadduck455',
  bio: 'enable front-end partnerships',
  due_date: '2024-12-31',
  post_code: '3012',
  parent_experience: 0,
)
user = User.create!(
  email: 'tamara.zikic@example.com',
  password: '6c70a98ff9b85744',
  first_name: 'Tamara',
  last_name: 'Žikić',
  nickname: 'yellowcat298',
  bio: 'expedite compelling supply-chains',
  due_date: '2025-02-08',
  post_code: '3014',
  parent_experience: 0,
)
user = User.create!(
  email: 'isabelle.burke@example.com',
  password: 'a44d3dfd4cdee5fb',
  first_name: 'Isabelle',
  last_name: 'Burke',
  nickname: 'angryzebra279',
  bio: 'evolve wireless models',
  due_date: '2024-07-04',
  post_code: '3012',
  parent_experience: 0,
)
user = User.create!(
  email: 'josefine.mortensen@example.com',
  password: '4882547d77885d76',
  first_name: 'Josefine',
  last_name: 'Mortensen',
  nickname: 'purplepanda168',
  bio: 'innovate turn-key channels',
  due_date: '2024-09-26',
  post_code: '3000',
  parent_experience: 0,
)

count = 0

User.all.each do |user|
  user.bio = user_bios[count]
  user.save
  count += 1
end


require 'httparty'
require 'securerandom'
require 'faker'


number_of_users = 25

# 人物の写真を取得
response = HTTParty.get("https://randomuser.me/api/?results=#{number_of_users}&gender=female")
users = response['results']

# seeds.rbファイルにデータを書き込む
File.open(Rails.root.join('db', 'seeds.rb'), 'a') do |file|
  file.puts "User.destroy_all\n\n"

  users.each do |user_data|
    # ユーザーデータを作成
    email = user_data['email']
    password = SecureRandom.hex(8)
    first_name = user_data['name']['first']
    last_name = user_data['name']['last']
    nickname = user_data['login']['username']
    personal_details = Faker::Company.bs
    due_date = Date.today + rand(1..365)
    post_code = rand(2000..2030)
    parent_experience = 0
    # is_mentor = true
    # joined_mentor_program = true

    # Userを作成
    file.puts "user = User.create!("
    file.puts "  email: '#{email}',"
    file.puts "  password: '#{password}',"
    file.puts "  first_name: '#{first_name}',"
    file.puts "  last_name: '#{last_name}',"
    file.puts "  nickname: '#{nickname}',"
    file.puts "  bio: '#{personal_details}',"
    file.puts "  due_date: '#{due_date}',"
    file.puts "  post_code: '#{post_code}',"
    file.puts "  parent_experience: #{parent_experience},"
    # file.puts "  is_mentor: #{is_mentor},"
    # file.puts "  joined_mentor_program: #{joined_mentor_program}"
    file.puts ")"

    file.puts  “file = URI.open(\“#{picture[\“large\“]}\“)”　
    file.puts  “user.photo.attach(io: file, filename: \“user.png\“, content_type: \“image/png\“)”
    file.puts  “article.save”


  end
end
