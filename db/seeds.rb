# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke ', movie: movies.first)

User.destroy_all
User.create(user_name: 'Steve Muggins', donation_amount: '50.21', :password => 'chicken', email: 'ivorking@gmail.com')
User.create(user_name: 'Banjo Paterson', donation_amount: '35.70', :password => 'chicken', email: 'boggins@gmail.com')

Pol.destroy_all
Pol.create(name_first: 'STEVE', name_last: 'STEVE', party: 'Democrats', NRA_rating: 'A+', house: 'Senate')
Pol.create(name_first: 'BEN', name_last: 'BEN', party: 'Democrats', NRA_rating: 'B', house: 'Senate')
Pol.create(name_first: 'Bigsy', name_last: 'Wigsy', party: 'Democrats', NRA_rating: 'B', house: 'Senate')

State.destroy_all
State.create(state_name: 'California', gun_control_rating: 'strong', handg_bans: 'False', assaultw_bans: 'False', background_checks: 'False', min_age: '20', bump_bans: 'False', open_carry_ok: 'False', concealed_carry_ok: 'True')
State.create(state_name: 'Texas', gun_control_rating: 'weak', handg_bans: 'False', assaultw_bans: 'False', background_checks: 'False', min_age: '20', bump_bans: 'False', open_carry_ok: 'False', concealed_carry_ok: 'True')

Group.destroy_all
Group.create(lg_name: 'NRA', size: 'large', budget: '200', polarity: 'pro')
Group.create(lg_name: 'ASIDF', size: 'small', budget: '200', polarity: 'anti')
