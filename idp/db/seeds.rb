# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Doorkeeper::Application.create(
  name: 'Client',
  uid: ENV.fetch('IDP_KEY'),
  secret: ENV.fetch('IDP_SECRET'),
  redirect_uri: "#{ENV.fetch('IDP_CLIENT')}/auth/idp/callback",
  confidential: true
)
