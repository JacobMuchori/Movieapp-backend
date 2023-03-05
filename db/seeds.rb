
puts "Deleting old data..."
Movie.destroy_all

puts "creating movie data..."
Movie.create(
    title: "Black Panther: Wakanda Forever",
    year: 2022,
    description: "Queen Ramonda, Shuri, M'Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T'Challa's death. As the Wakandans strive to embrace their next chapter, the heroes must band together with Nakia and Everett Ross to forge a new path for their beloved kingdom.",
    movie_url: "panther.jpg",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Avengers: Endgame",
    year: 2020,
    description: "After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.",
    movie_url: "avengers.jpg",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Prey for the Devil",
    year: 2022,
    description: "The Roman Catholic Church combats a global rise in demonic possessions by reopening schools to train priests to perform exorcisms. Although nuns are forbidden to perform this ritual, a professor recognizes Sister Ann's gifts and agrees to train her. Thrust onto the spiritual frontline, she soon finds herself in a battle for the soul of a young girl who's possessed by the same demon that tormented her own mother years earlier.",
    movie_url: "prey.jpg",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Red",
    year: 2010,
    description: "Frank Moses, a former black-ops agent, learns that his life is under threat from an assassin. In a bid to protect himself, he reunites with his old team to nab the man who has vowed to kill him.",
    movie_url: "red.jpg",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Spectre",
    year: 2015,
    description: "James Bond receives an obscure message from M about a sinister organisation. With the help of Madeleine, he uncovers the conspiracy, only to face an ugly truth.",
    movie_url: "spectre.jpg",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Orphan",
    year: 2009,
    description: "After losing their baby, a couple adopt a nine-year-old girl. However, they soon make a troubling discovery about her mysterious past and uncover several traits of her disturbing personality.",
    movie_url: "orphan.jpg",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Ocean's Thirteen",
    year: 2007,
    description: "Danny and his gang of thieves have to pull off their most risky heist to defend one of their own. However, they are going to need more than luck to break the ruthless Willy and his casino.",
    movie_url: "oceans.jpg",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Madagascar",
    year: 2005, 
    description: "Four spoiled animals from the New York Central Zoo escape with the unintentional help of four fugitive penguins. They subsequently find themselves in Madagascar amidst happy lemurs.",
    movie_url: "madagascar.jpg",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "The Conjuring",
    year: 2013,
    description: "The Perron family moves into a farmhouse where they experience paranormal phenomena. They consult demonologists, Ed and Lorraine Warren, to help them get rid of the evil entity haunting them.",
    movie_url: "conjuring.jpg",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "The Bourne Legacy",
    year: 2012,
    description: "The US Department of Defense, which runs covert operations, offers stimulants to its field operatives for better results. When discovered, an English reporter plans to expose these secret activities.",
    movie_url: "bourne.jpg",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Kung Fu Panda",
    year: 2008,
    description: "When Po the Panda, a kung fu enthusiast, gets selected as the Dragon Warrior, he decides to team up with the Furious Five and destroy the evil forces that threaten the Valley of Peace.",
    movie_url: "panda.jpg",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Bumblebee",
    year: 2018,
    description: "During the Cybertron Civil War, Optimus Prime sends Autobot scout B-127 to Earth to form a base where they can regroup. Later, the scout befriends a girl named Charlie, who names him Bumblebee.",
    movie_url: "bee.jpg",
    user_id: nil,
    originally_fetched: true
)

User.create(
    first_name: "Jacob",
    last_name: "Kinyua",
    email: "mush@email.com",
    password: 12345
)

puts "done seeding..."