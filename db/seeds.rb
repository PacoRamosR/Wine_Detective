User.create!(name:  "Example User",
             email: "example@examplemail.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

Wine.create!(name: "Example wine",
            country: "Example country",
            price: "Example price",
            grape_variety: "Example variety",
            explanation: "Example explanation",
            pairing: "Example pairing",
            smooth_tannic: "Example number",
            dry_sweet: "Example number",
            soft_acidic: "Example number",
            rate: "Example number",
            light_bold: "Example number")


99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@examplemail.org"
  password = "password"
  country = Faker::Nation.nationality
  price = Faker::Number.number(digits: 2)
  grape_variety = Faker::Artist.name
  explanation = Faker::ChuckNorris.fact
  pairing = Faker::Food.dish
  smooth_tannic = Faker::Number.number(digits: 2)
  dry_sweet = Faker::Number.number(digits: 2)
  soft_acidic = Faker::Number.number(digits: 2)
  light_bold = Faker::Number.number(digits: 2)
  rate = Faker::Number.number(digits: 1)
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
  Wine.create!(name: name,
              country: country,
              price: price,
              grape_variety: grape_variety,
              explanation: explanation,
              pairing: pairing,
              smooth_tannic: smooth_tannic,
              dry_sweet: dry_sweet,
              soft_acidic: soft_acidic,
              rate: rate,
              light_bold: light_bold)          
end