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

l1 = League.create(user_id: 1, name: "Easy", max_teams: 2, seed_order: [1, 2], draft_start: Time.now, round_duration: 5, roster_guards: 1, roster_forwards: 1, roster_centers: 1, roster_utility: 1, roster_bench: 1)

t1 = Team.create(user_id: u01.id, league_id: l1.id, roster: [], queue: [], name: "Sean's Stompers")
t2 = Team.create(user_id: u02.id, league_id: l1.id, roster: [], queue: [], name: "Alice's Annihilators")