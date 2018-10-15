#one controlled user to use to login
User.create!(name:  "Zoid",
#the email below is linked to a gravatar
    email: "brandincurry@gmail.com",
    password:              "password123",
    password_confirmation: "password123",
    admin: true)

#generate 99 users using fakers name generation
99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@example.com"
    password = "password"
    User.create!(name:  name,
        email: email,
        password:              password,
        password_confirmation: password)
end