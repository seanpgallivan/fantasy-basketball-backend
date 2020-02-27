u01 = User.create(username: "sean", firstname: "Sean", lastname: "Gallivan", password: "asdf", password_confirmation: "asdf")
u02 = User.create(username: "alice", firstname: "Alice", lastname: "Won", password: "asdf", password_confirmation: "asdf")
u03 = User.create(username: "amy", firstname: "Amy", lastname: "Chen", password: "asdf", password_confirmation: "asdf")
u04 = User.create(username: "bahay", firstname: "Bahay", lastname: "Bilgi", password: "asdf", password_confirmation: "asdf")
u05 = User.create(username: "drew", firstname: "Drew", lastname: "Matheny", password: "asdf", password_confirmation: "asdf")
u06 = User.create(username: "jacob", firstname: "Jacob", lastname: "Knopf", password: "asdf", password_confirmation: "asdf")
u07 = User.create(username: "josh", firstname: "Josh", lastname: "Phelps", password: "asdf", password_confirmation: "asdf")
u08 = User.create(username: "mengs", firstname: "Mengs", lastname: "Woldearegay", password: "asdf", password_confirmation: "asdf")
u09 = User.create(username: "mia", firstname: "Mia", lastname: "Pan", password: "asdf", password_confirmation: "asdf")
u10 = User.create(username: "natali", firstname: "Natali", lastname: "Kruk", password: "asdf", password_confirmation: "asdf")
u11 = User.create(username: "nicole", firstname: "Nicole", lastname: "Cabral", password: "asdf", password_confirmation: "asdf")
u12 = User.create(username: "tanner", firstname: "Tanner", lastname: "Patterson", password: "asdf", password_confirmation: "asdf")

l01 = League.create(user_id: 1, name: "Easy Peasy", max_teams: 2, seed_order: [0,1], draft_start: Time.now, round_duration: 5, roster_guards: 1, roster_forwards: 1, roster_centers: 1, roster_utility: 1, roster_bench: 1)
l02 = League.create(user_id: 1, name: "Lemon Squeezy", max_teams: 4, seed_order: [0,3,1,2], draft_start: Time.now, round_duration: 5, roster_guards: 1, roster_forwards: 1, roster_centers: 1, roster_utility: 1, roster_bench: 1)
l03 = League.create(user_id: 1, name: "Winner Winner", max_teams: 7, seed_order: [0,6,5,1,5,3,2], draft_start: Time.now, round_duration: 5, roster_guards: 1, roster_forwards: 1, roster_centers: 1, roster_utility: 1, roster_bench: 1)
l04 = League.create(user_id: 1, name: "Chicken Dinner", max_teams: 12, seed_order: [0,11,7,10,2,6,1,8,4,9,3,5], draft_start: Time.now, round_duration: 5, roster_guards: 1, roster_forwards: 1, roster_centers: 1, roster_utility: 1, roster_bench: 1)

def build_roster(n)
  players = ["201935", "203078", "203081", "203507", "1629027", "1629029", "201566", "202681", "202695", "203076", "1626157", "1626164", "2544", "203897", "1627742", "1628378", "203954", "1626156", "1627783", "201942", "1628369", "1629627", "202331", "202689", "203114", "203468", "1627736", "201939", "202710", "202711", "203915", "203999", "1627741", "1627759", "1628381", "101150", "200768", "201568", "201950", "202696", "202699", "203471", "203944", "203952", "1628368", "1628983", "1629012", "200746", "201565", "203095"]
  new_roster = []
  n.times do 
    new_roster.push(players.sample)
  end
  return new_roster
end

t01 = Team.create(user_id: u01.id, league_id: l01.id, roster: build_roster(5), queue: [], name: "Sean's Savages")
t02 = Team.create(user_id: u02.id, league_id: l01.id, roster: build_roster(4), queue: [], name: "Alice's Annihilators")

t01 = Team.create(user_id: u01.id, league_id: l02.id, roster: build_roster(5), queue: [], name: "Sean's Savages")
t02 = Team.create(user_id: u02.id, league_id: l02.id, roster: build_roster(4), queue: [], name: "Alice's Annihilators")
t03 = Team.create(user_id: u03.id, league_id: l02.id, roster: build_roster(4), queue: [], name: "Amy's Ambushers")
t04 = Team.create(user_id: u04.id, league_id: l02.id, roster: build_roster(5), queue: [], name: "Bahay's Bruisers")

t01 = Team.create(user_id: u01.id, league_id: l03.id, roster: build_roster(5), queue: [], name: "Sean's Savages")
t02 = Team.create(user_id: u02.id, league_id: l03.id, roster: build_roster(5), queue: [], name: "Alice's Annihilators")
t03 = Team.create(user_id: u03.id, league_id: l03.id, roster: build_roster(4), queue: [], name: "Amy's Ambushers")
t04 = Team.create(user_id: u04.id, league_id: l03.id, roster: build_roster(4), queue: [], name: "Bahay's Bruisers")
t05 = Team.create(user_id: u05.id, league_id: l03.id, roster: build_roster(5), queue: [], name: "Drew's Deconstructors")
t06 = Team.create(user_id: u06.id, league_id: l03.id, roster: build_roster(5), queue: [], name: "Jacob's Potatos")
t07 = Team.create(user_id: u07.id, league_id: l03.id, roster: build_roster(5), queue: [], name: "Josh's Jammers")

t01 = Team.create(user_id: u01.id, league_id: l04.id, roster: build_roster(5), queue: [], name: "Sean's Savages")
t02 = Team.create(user_id: u02.id, league_id: l04.id, roster: build_roster(4), queue: [], name: "Alice's Annihilators")
t03 = Team.create(user_id: u03.id, league_id: l04.id, roster: build_roster(5), queue: [], name: "Amy's Ambushers")
t04 = Team.create(user_id: u04.id, league_id: l04.id, roster: build_roster(4), queue: [], name: "Bahay's Bruisers")
t05 = Team.create(user_id: u05.id, league_id: l04.id, roster: build_roster(4), queue: [], name: "Drew's Deconstructors")
t06 = Team.create(user_id: u06.id, league_id: l04.id, roster: build_roster(4), queue: [], name: "Jacob's Potatos")
t07 = Team.create(user_id: u07.id, league_id: l04.id, roster: build_roster(4), queue: [], name: "Josh's Jammers")
t08 = Team.create(user_id: u08.id, league_id: l04.id, roster: build_roster(5), queue: [], name: "Mengs' Mutilators")
t09 = Team.create(user_id: u09.id, league_id: l04.id, roster: build_roster(4), queue: [], name: "Mia's Manglers")
t10 = Team.create(user_id: u10.id, league_id: l04.id, roster: build_roster(4), queue: [], name: "Natali's Nightmares")
t11 = Team.create(user_id: u11.id, league_id: l04.id, roster: build_roster(5), queue: [], name: "Nicole's Nemeses")
t12 = Team.create(user_id: u12.id, league_id: l04.id, roster: build_roster(5), queue: [], name: "Tanner's Pariahs")
