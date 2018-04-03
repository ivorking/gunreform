# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke ', movie: movies.first)

User.destroy_all
User.create(user_name: 'Steve Muggins', following: 'Johnson', donation_amount: '50')
User.create(user_name: 'Banjo Paterson', following: 'Benson', donation_amount: '35')

Pol.destroy_all
Pol.create(name: 'Johnson', party: 'Democrats', NRA_rating: 'A+', house: 'Senate')
Pol.create(name: 'Benson', party: 'Democrats', NRA_rating: 'B', house: 'Senate')

State.destroy_all
State.create(state_name: 'California', gun_control_rating: 'strong', handg_bans: 'False', assaultw_bans: 'False', background_checks: 'False', min_age: '20', bump_bans: 'False', open_carry: 'False')
State.create(state_name: 'Texas', gun_control_rating: 'weak', handg_bans: 'False', assaultw_bans: 'False', background_checks: 'False', min_age: '20', bump_bans: 'False', open_carry: 'False')

Group.destroy_all
Group.create(lg_name: 'NRA', size: 'large', budget: '200.0')
